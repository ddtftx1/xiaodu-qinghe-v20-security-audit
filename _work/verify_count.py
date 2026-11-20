import json

d = json.load(open('/sdcard/漏洞/analysis/audit.json'))

true_only = def_only = 0
for x in d:
    for c in x['comps']:
        e = (c.get('exported') or '').lower()
        if e == 'true':
            true_only += 1
        elif e == 'def':
            def_only += 1
print('exported="true"      :', true_only)
print('exported="def"       :', def_only)
print('两者合计             :', true_only + def_only)
print('组件记录总数         :', sum(len(x["comps"]) for x in d))
print()

print('=== com.baidu.launcher（DuerShowLauncher）身份 ===')
for x in d:
    if x['pkg'] == 'com.baidu.launcher':
        print('  sharedUserId:', x.get('shared'))
        print('  apk:', x['apk'])
print()

print('=== 未被保护的导出 Provider（全设备） ===')
rows = []
for x in d:
    for c in x['comps']:
        if c['type'] != 'provider':
            continue
        e = (c.get('exported') or '').lower()
        if e not in ('true', 'def'):
            continue
        perm = (c.get('permission') or '').strip()
        rd = (c.get('read') or '').strip()
        wr = (c.get('write') or '').strip()
        if perm or rd or wr:
            continue
        rows.append((x['pkg'], x.get('shared') or '-', c['name'].split('.')[-1], c.get('authorities', '')))

from collections import Counter
cnt = Counter(r[0] for r in rows)
print('总数:', len(rows))
for p, n in cnt.most_common():
    print('   %-42s %d' % (p, n))
print()
print('--- 其中 sharedUserId 为 android.uid.system 的 ---')
for r in rows:
    if r[1] == 'android.uid.system':
        print('   %-34s %-40s %s' % (r[0], r[2], r[3]))
print()
print('--- com.baidu.launcher 的未保护导出 Provider ---')
for r in rows:
    if r[0] == 'com.baidu.launcher':
        print('   %-40s %s' % (r[2], r[3]))