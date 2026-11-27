import os as _os, sys as _sys
_REPO = _os.path.dirname(_os.path.dirname(_os.path.abspath(__file__)))
import re
import os

readme = open(_os.path.join(_REPO, 'README.md'), encoding='utf-8').read()

# 1) 提取索引表中的编号
table_ids = re.findall(r'^\|\s*(V\d{2})\s*\|', readme, re.M)
print('=== 索引表编号 ===')
print('  出现:', ' '.join(table_ids))
print('  条数:', len(table_ids))

# 2) 重复检查
from collections import Counter
dup = [k for k, v in Counter(table_ids).items() if v > 1]
print('  重复:', dup if dup else '无')

# 3) 缺失检查 V01..V20
allid = ['V%02d' % i for i in range(1, 21)]
missing = [i for i in allid if i not in table_ids]
print('  V01-V20 中缺失:', missing if missing else '无')

# 4) 验证状态计数
ok = readme.count('| ✅ |') + len(re.findall(r'\|\s*✅（需 UI 进入）\s*\|', readme))
part = len(re.findall(r'部分\s*✅', readme))
static = readme.count('| 静态确认 |')
print()
print('=== 验证状态（表格行计数）===')
print('  纯 ✅ 行        :', len(re.findall(r'\|\s*✅\s*\|\s*$', readme, re.M)))
print('  ✅（需 UI 进入）:', len(re.findall(r'✅（需 UI 进入）', readme)))
print('  部分 ✅        :', len(re.findall(r'\|\s*部分\s*✅\s*\|', readme)))
print('  静态确认        :', len(re.findall(r'\|\s*静态确认\s*\|\s*$', readme, re.M)))

# 5) docs 目录完整性
docs = sorted(os.listdir(_os.path.join(_REPO, 'docs')))
print()
print('=== docs 目录 ===')
print('  文件数:', len(docs))
for d in docs:
    print('   ', d)

# 6) 检查 README 中提到的 docs 文件是否都存在
refs = re.findall(r'docs/([A-Za-z0-9\-\.]+\.md)', readme)
print()
print('=== README 引用的 docs 文件 ===')
for r in sorted(set(refs)):
    print('   %-46s %s' % (r, '存在' if r in docs else '❌ 缺失'))