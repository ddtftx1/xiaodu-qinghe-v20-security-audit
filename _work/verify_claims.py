import json
import re

d = json.load(open('/sdcard/漏洞/analysis/audit.json'))

# 建立索引: (pkg, 类名简写/全名) -> 组件信息
idx = {}
for x in d:
    for c in x['comps']:
        idx[(x['pkg'], c['name'])] = c
        idx[(x['pkg'], c['name'].split('.')[-1])] = c

# README 表格里声明的组件（包名, 组件名, 声称的 exported, 声称的验证状态）
CLAIMS = [
    ('V06',  'com.sprd.validationtools', 'AudioStationUpdateActivity'),
    ('V07',  'com.sprd.validationtools', 'QmmiBroadcastReceiver2'),
    ('V10',  'com.sprd.engineermode',    'ModemAssertReceiver'),
    ('V11',  'com.sprd.agingtest',       'PhoneBootReceiver'),
    ('V12',  'com.sprd.factorytest',     'PhoneBootReceiver'),
    ('V13',  'com.sprd.srmi',            'SrmiManager'),
    ('V14',  'com.baidu.duershow.statistic', 'SystemLogRequestReceiver'),
    ('V08',  'com.sprd.validationtools', 'ValidationToolsBroadcastReceiver'),
    ('V05',  'com.sprd.engineermode',    'EMStartReceiver'),
    ('V01',  'com.sprd.validationtools', 'FactoryReset'),
    ('V02',  'com.sprd.engineermode',    'PingActivity'),
    ('V03',  'com.baidu.duer.ota',       'ThirdAppContentProvider'),
    ('V04',  'com.baidu.duerguard',      'DuerGuardContentProvider'),
    ('V16',  'com.sprd.validationtools', 'CountryCodeSettings'),
    ('V17',  'com.sprd.validationtools', 'PhaseCheckBroadcastReceiver'),
]

print('=== README 声明的组件 vs 实际清单 ===')
print()
bad = 0
for vid, pkg, short in CLAIMS:
    hit = idx.get((pkg, short))
    if hit is None:
        # 尝试模糊匹配（内部类等）
        cands = [k[1] for k in idx if k[0] == pkg and short in k[1]]
        cands = sorted(set(cands))
        print('%-5s %-30s %-40s  ✗ 未精确匹配' % (vid, pkg, short))
        for c in cands[:3]:
            ci = idx[(pkg, c)]
            print('       可能应为: %-62s exported=%s perm=%s'
                  % (c, ci.get('exported'), (ci.get('permission') or '-')[:40]))
        bad += 1
        continue
    exp = (hit.get('exported') or '').lower()
    perm = (hit.get('permission') or '').strip()
    flag = ''
    if exp == 'false':
        flag = '  ← exported=FALSE'
        bad += 1
    print('%-5s %-30s %-40s  exported=%-5s perm=%s%s'
          % (vid, pkg, short, exp, perm[:38] or '-', flag))

print()
print('存在问题的条目数:', bad)