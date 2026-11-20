import os

WORK = '/sdcard/漏洞/_work'

EXISTING = {
    'com.sprd.validationtools': WORK + '/mmi_dec2/AndroidManifest.xml',
    'com.baidu.duerguard':      WORK + '/duerguard_dec/AndroidManifest.xml',
}

print('=== 已解出的清单里的权限声明 ===')
for pkg, path in sorted(EXISTING.items()):
    if not os.path.exists(path):
        print('--- %s  (清单未找到)' % pkg)
        continue
    s = open(path, encoding='utf-8', errors='ignore').read()
    print('--- ' + pkg)
    n = 0
    for line in s.splitlines():
        if '<permission ' in line:
            print('   ' + line.strip())
            n += 1
    if n == 0:
        print('    (无 <permission> 声明)')
    print()