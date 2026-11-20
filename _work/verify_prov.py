import json

d = json.load(open('/sdcard/漏洞/analysis/audit.json'))
prov = json.load(open('/sdcard/漏洞/analysis/prov_unsafe.json'))

print('=== A) DuerShowLauncher 全部 Provider 的 permission / read / write ===')
for x in d:
    if x['pkg'] == 'com.baidu.launcher':
        for c in x['comps']:
            if c['type'] != 'provider':
                continue
            print('%-52s' % c['name'].split('.')[-1])
            print('    permission = %s' % (c.get('permission') or '(空)'))
            print('    readPerm   = %s' % (c.get('read') or '(空)'))
            print('    writePerm  = %s' % (c.get('write') or '(空)'))
            print('    exported   = %s' % (c.get('exported') or '(空)'))

print()
print('=== B) prov_unsafe.json 是否收录 DuerGuard / 是否有 readPermission ===')
names = [(p['apk'].split('/')[-1], p['name'].split('.')[-1]) for p in prov]
for apk, nm in names:
    if 'uerguard' in apk or 'DuerGuard' in nm:
        print('  命中:', apk, nm)
print('  prov_unsafe 总条数:', len(prov))

# 交叉核对 prov_unsafe 里的条目，在 audit.json 中是否真的有 read/write permission
print()
print('=== C) prov_unsafe 条目在 audit.json 中的实际 read/write 情况（抽查） ===')
idx = {}
for x in d:
    for c in x['comps']:
        if c['type'] == 'provider':
            idx[c.get('authorities', '')] = (x['pkg'], c)
hit_perm = 0
for p in prov:
    auth = p['auth'].split(';')[0]
    if auth in idx:
        pkg, c = idx[auth]
        if (c.get('permission') or '').strip() or (c.get('read') or '').strip() or (c.get('write') or '').strip():
            hit_perm += 1
            print('  ⚠ %-50s 实际有权限: perm=%s read=%s write=%s'
                  % (auth[:50], c.get('permission') or '-', c.get('read') or '-', c.get('write') or '-'))
print('  抽查结果: prov_unsafe 中实际存在权限声明的条目数 =', hit_perm)