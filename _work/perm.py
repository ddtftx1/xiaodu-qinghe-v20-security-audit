import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import re
import os
import subprocess

# 递归找出所有 AndroidManifest.xml 中 permission 的 protectionLevel
roots = [_os.path.join(_REPO, '_work/mmi_dec/AndroidManifest.xml')]

base = _os.path.join(_REPO, '_work')
found = []
for d in os.listdir(base):
    p = os.path.join(base, d, 'AndroidManifest.xml')
    if os.path.exists(p):
        roots.append(p)

print('检查 manifest 数量:', len(roots))
print()

pat_base = re.compile(r'<permission\b[^>]*>', re.S)
for p in roots:
    try:
        s = open(p, encoding='utf-8', errors='ignore').read()
    except Exception as e:
        continue
    for line in s.splitlines():
        if '<permission' in line and 'protectionLevel' in line:
            name = re.search(r'android:name="([^"]+)"', line)
            lvl = re.search(r'android:protectionLevel="([^"]+)"', line)
            if name and lvl:
                found.append((p.split('/')[-2], name.group(1), lvl.group(1)))

for f in sorted(found):
    print('%-14s %-60s %s' % f)