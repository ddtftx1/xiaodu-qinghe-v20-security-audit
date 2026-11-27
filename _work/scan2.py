import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import json

d = json.load(open(_os.path.join(_REPO, 'analysis/audit.json')))

VENDOR = {
    'com.example.android.home', 'com.baidu.duer.ota', 'com.baidu.duerguard',
    'com.baidu.duershow.statistic', 'com.unisoc.enginecore', 'com.sprd.srmi',
    'com.sprd.validationtools', 'com.sprd.engineermode', 'com.sprd.agingtest',
    'com.sprd.factorytest', 'com.baidu.duershow.media', 'com.baidu.pcdn',
    'com.baidu.duer', 'com.android.deskclock',
}

rows = []
for x in d:
    if x.get('shared') != 'android.uid.system':
        continue
    if x['pkg'] not in VENDOR:
        continue
    for c in x['comps']:
        exp = (c.get('exported') or '').lower()
        if exp not in ('true', 'def'):
            continue
        perm = (c.get('permission') or '').strip()
        rd = (c.get('read') or '').strip()
        wr = (c.get('write') or '').strip()
        stub = '[P]' if perm else ('[R]' if rd or wr else '[!]')
        rows.append((x['pkg'], c['type'], c['name'], c.get('authorities', ''),
                     exp, stub, perm or (rd + '|' + wr)))

print('厂商包 system-uid 导出组件:', len(rows))
print()
for r in sorted(rows):
    print('%-26s | %-8s | %-62s | %s %s' % (r[0], r[1], r[2][:62], r[4], r[5]))
    if r[6].strip('|'):
        print(' ' * 26 + '   -> perm: ' + r[6])
    if r[3]:
        print(' ' * 26 + '   -> auth: ' + r[3])