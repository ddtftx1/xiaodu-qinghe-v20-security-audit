import json
import re

# 1) seapp_contexts 里的专用域映射
# 注意：Ubuntu(proot) 侧无法访问 /vendor，这里内嵌从 Android 侧读取到的原文
SEAPP_RAW = """
user=system seinfo=platform name=com.sprd.validationtools domain=sprd_validationtools_app type=system_app_data_file
user=system seinfo=platform name=com.sprd.agingtest domain=sprd_validationtools_app type=system_app_data_file
user=system seinfo=platform name=com.sprd.factorytest domain=sprd_validationtools_app type=system_app_data_file
user=system seinfo=platform name=com.spr.persistprovider domain=sprd_validationtools_app type=system_app_data_file
user=system seinfo=platform name=com.sprd.autoslt domain=sprd_autoslt_app type=app_data_file
user=_app seinfo=platform name=com.sprd.logmanager domain=sprd_logmanager_app type=app_data_file
user=system seinfo=platform name=com.unisoc.gnss tool domain=unisoc_gnsstool_app type=app_data_file
user=system seinfo=platform name=com.sprd.engineerinternal domain=sprd_engineerinternal_app type=system_app_data_file
user=system seinfo=platform name=com.sprd.engineermode domain=sprd_engineermode_app type=system_app_data_file
user=_app seinfo=platform name=com.sprd.cameraipcontrol domain=sprd_cameraipcontrol_app type=app_data_file
user=system seinfo=platform name=com.spreadst.validator domain=sprd_validator_app type=system_app_data_file
user=_app seinfo=platform name=com.spreadtrum.sgps domain=sprd_sgps_app type=app_data_file
user=system seinfo=platform name=com.sprd.bmte.coulomb domain=sprd_coulomb_app type=app_data_file
"""
SEAPP_RAW = SEAPP_RAW.replace('com.unisoc.gnss tool', 'com.unisoc.gnstool')

seapp = {}
for line in SEAPP_RAW.strip().splitlines():
    line = line.strip()
    if not line or line.startswith('#'):
        continue
    kv = dict(re.findall(r'(\w+)=(\S+)', line))
    name = kv.get('name')
    dom = kv.get('domain')
    if name and dom:
        seapp[name] = (dom, kv.get('user'), kv.get('type'))

# 2) audit.json 里实际存在的包
d = json.load(open('/sdcard/漏洞/analysis/audit.json'))
bypkg = {}
for x in d:
    bypkg[x['pkg']] = x

print('=== SELinux 专用域 × 实际 APK 交叉比对 ===')
print()
print('%-34s %-34s %-9s %s' % ('包名', 'SELinux 域', 'apk存在', 'sharedUserId'))
print('-' * 110)

present, missing = [], []
for name in sorted(seapp):
    dom, usr, typ = seapp[name]
    hit = bypkg.get(name)
    if hit:
        present.append((name, dom, hit))
        print('%-34s %-34s %-9s %s' % (name, dom, 'YES', hit.get('shared') or '-'))
    else:
        missing.append((name, dom))
        print('%-34s %-34s %-9s %s' % (name, dom, 'NO', ''))

print()
print('存在于 audit.json 的专用域包: %d' % len(present))
print('声明了域但 APK 不在审计集: %d' % len(missing))
for m in missing:
    print('   缺失:', m[0], '->', m[1])

print()
print('=== 这些专用域包中，导出且无权限的组件 ===')
for name, dom, x in present:
    rows = []
    for c in x['comps']:
        exp = (c.get('exported') or '').lower()
        if exp not in ('true', 'def'):
            continue
        perm = (c.get('permission') or '').strip()
        rd = (c.get('read') or '').strip()
        wr = (c.get('write') or '').strip()
        if perm or rd or wr:
            continue
        rows.append((c['type'], c['name'], c.get('authorities', '')))
    if rows:
        print()
        print('[%s]  domain=%s  shared=%s  (%d 个)' % (name, dom, x.get('shared') or '-', len(rows)))
        for t, n, a in rows:
            extra = ('  auth=' + a) if a else ''
            print('   %-9s %s%s' % (t, n, extra))