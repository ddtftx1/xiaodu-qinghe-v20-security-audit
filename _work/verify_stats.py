import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import json

d = json.load(open(_os.path.join(_REPO, 'analysis/audit.json')))
prov = json.load(open(_os.path.join(_REPO, 'analysis/prov_unsafe.json')))

print('=== 统计核对 ===')
print()

print('1) APK 总数        :', len(d))

tot = 0
for x in d:
    for c in x['comps']:
        if (c.get('exported') or '').lower() in ('true', 'def'):
            tot += 1
print('2) 导出组件总数    :', tot, ' (README 声称 1081)')

sysuid = [x for x in d if x.get('shared') == 'android.uid.system']
print('3) system UID 包数 :', len(sysuid), ' (README 声称 21)')

print('4) prov_unsafe 条数:', len(prov), ' (README 声称 52)')
print()

for x in d:
    if x['pkg'] == 'com.baidu.launcher':
        ps = [c for c in x['comps'] if c['type'] == 'provider']
        print('5) DuerShowLauncher Provider 数:', len(ps), ' (README 声称 9)')
        for p in ps:
            print('     %-56s read=%-30s write=%s'
                  % (p['name'].split('.')[-1],
                     (p.get('read') or '-')[:30],
                     (p.get('write') or '-')[:30]))

print()
print('=== V01 / V02 实际清单 ===')
for x in d:
    for c in x['comps']:
        if c['name'].endswith('FactoryReset') or c['name'].endswith('PingActivity'):
            print('%-32s %-62s exported=%-5s perm=%s'
                  % (x['pkg'], c['name'], c.get('exported'), c.get('permission') or '-'))