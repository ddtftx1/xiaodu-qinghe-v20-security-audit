import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import json
import re

d = json.load(open(_os.path.join(_REPO, 'analysis/audit.json')))

# 1) 收集所有被组件当作 android:permission / readPermission / writePermission 引用的权限
#    排除 android.permission.* 系统权限
refs = {}   # perm -> set(引用它的组件)
for x in d:
    for c in x['comps']:
        for key in ('permission', 'read', 'write'):
            p = (c.get(key) or '').strip()
            if not p:
                continue
            for one in re.split(r'[;|,]', p):
                one = one.strip()
                if not one or one.startswith('android.permission.'):
                    continue
                refs.setdefault(one, set()).add(
                    '%s/%s' % (x['pkg'], c['name'].split('.')[-1]))

print('=== 非系统自定义权限引用统计 ===')
print('去重后自定义权限数:', len(refs))
print()
for p in sorted(refs):
    print('%-56s 引用组件数=%d' % (p, len(refs[p])))
    for r in sorted(refs[p]):
        print('      <- ', r)
    print()