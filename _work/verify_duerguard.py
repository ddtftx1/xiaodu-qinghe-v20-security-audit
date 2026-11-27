import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import json

d = json.load(open(_os.path.join(_REPO, 'analysis/audit.json')))

print('=== DuerGuard 在 audit.json 中的原始记录 ===')
for x in d:
    if x['pkg'] == 'com.baidu.duerguard':
        print('pkg :', x['pkg'])
        print('apk :', x['apk'])
        print('shared:', x.get('shared'))
        print()
        for c in x['comps']:
            print('type=%s' % c['type'])
            print('  name      = %s' % c['name'])
            print('  exported  = %r' % c.get('exported'))
            print('  permission= %r' % c.get('permission'))
            print('  read      = %r' % c.get('read'))
            print('  write     = %r' % c.get('write'))
            print('  auth      = %r' % c.get('authorities'))
            print()

print('=== prov_unsafe.json 中所有 auth 值，搜 duerguard ===')
prov = json.load(open(_os.path.join(_REPO, 'analysis/prov_unsafe.json')))
found = False
for p in prov:
    s = json.dumps(p, ensure_ascii=False)
    if 'duerguard' in s.lower():
        print('  命中:', s)
        found = True
if not found:
    print('  (无任何匹配)')

print()
print('=== prov_unsafe.json 实际条数 ===')
print('  len =', len(prov))
print('  唯一条目(按 apk+name) =', len({(p['apk'], p['name']) for p in prov}))