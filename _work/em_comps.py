import json

d = json.load(open('/sdcard/漏洞/analysis/audit.json'))

TARGET = 'com.sprd.engineermode'
for x in d:
    if x['pkg'] != TARGET:
        continue
    print('PKG:', x['pkg'], ' APK:', x['apk'])
    print('sharedUserId:', x.get('shared'))
    print()
    print('--- 关键权限 ---')
    for p in x['perms']:
        if any(k in p for k in ('SECURE_SETTINGS', 'WRITE_SETTINGS', 'REBOOT',
                                'MASTER_CLEAR', 'INSTALL', 'MOUNT', 'DUMP')):
            print('  *', p)
    print()
    print('--- 全部组件 (exported / permission) ---')
    for c in x['comps']:
        exp = c.get('exported') or ''
        perm = (c.get('permission') or '').strip()
        name = c['name']
        short = name.split('.')[-1]
        # 高亮关注项
        hot = ''
        if any(k in name for k in ('AdbShell', 'SystemSetting', 'CpuFreq', 'automodem',
                                   'ModemAssertTest', 'PreCheck', 'AndroidUtils',
                                   'DumpVideo', 'WatchDog', 'LauncherDebug')):
            hot = '   <<< HOT'
        if exp.lower() in ('true', 'def') or hot:
            print('  %-9s %-8s %-58s perm=%-38s%s' % (
                c['type'], exp, short, perm if perm else '-', hot))
