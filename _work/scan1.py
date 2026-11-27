import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import json
from collections import Counter

d = json.load(open(_os.path.join(_REPO, 'analysis/audit.json')))

def is_sys(shared):
    return shared in ('android.uid.system',)

rows = []
for x in d:
    if not is_sys(x.get('shared')):
        continue
    for c in x['comps']:
        exp = (c.get('exported') or '').lower()
        if exp not in ('true', 'def'):
            continue
        perm = (c.get('permission') or '').strip()
        rd = (c.get('read') or '').strip()
        wr = (c.get('write') or '').strip()
        if perm or rd or wr:
            continue
        rows.append((x['pkg'], c['type'], c['name'], c.get('authorities', ''), exp, x['apk']))

print('system-uid 导出且零权限组件总数:', len(rows))
for k, v in Counter(r[0] for r in rows).most_common():
    print('   %-40s %d' % (k, v))
print()
print('--- 明细 (按包排序) ---')
for r in sorted(rows):
    print('%-36s | %-8s | %-64s | %-30s | %s' % (r[0], r[1], r[2][:64], r[3][:30], r[4]))
