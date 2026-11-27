#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
engineermode 写入点静态扫描（v2）

修正 v1 的两个错误：
  1. Settings.*.put* 的键名是「第 2 个实参」而不是第 1 个（第 1 个是 ContentResolver）
  2. 同一行多个调用 / 跨行调用按括号配对切分，而不是取前 200 字符

输出:
  analysis/em_settings_sinks.tsv   全部命中点
  analysis/em_put_global.md        只看 Settings.Global.* 的可复核清单

用法（仓库根）:
  python _work/sinks.py                       # 内置 jadx 产物路径
  python _work/sinks.py --roots em=./_work/em_jadx
"""
import os
import re
import csv
import argparse
from collections import Counter

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT_TSV = os.path.join(REPO, 'analysis', 'em_settings_sinks.tsv')
OUT_MD = os.path.join(REPO, 'analysis', 'em_put_global.md')

# 全量 jadx 产物不入库（63MB）。这里只固化证据链上的关键类：
#   _work/em_key  <- com.sprd.engineermode 的关键类
#   _work/ds_key  <- com.baidu.duershow.statistic 的关键类
# 要扫全量（含未入库的 6 个 em dex 反编译产物），用 --roots 指向本地目录。
DEFAULT_ROOTS = [
    ('em_key', os.path.join(REPO, '_work', 'em_key')),
    ('ds_key', os.path.join(REPO, '_work', 'ds_key')),
]

# (kind, 正则, 键名实参下标, 备注)
APIS = [
    ('Settings.Global.put', re.compile(r'Settings\.Global\.put(?:Int|String|Long|Float)\s*\('), 1, '31317 唯一关心的 sink'),
    ('Settings.System.put', re.compile(r'Settings\.System\.put(?:Int|String|Long|Float)\s*\('), 1, ''),
    ('Settings.Secure.put', re.compile(r'Settings\.Secure\.put(?:Int|String|Long|Float)\s*\('), 1, ''),
    ('SystemPropertiesProxy.set', re.compile(r'SystemPropertiesProxy\.set\s*\('), 0, '属性写入'),
    ('SystemProperties.set', re.compile(r'(?<!Proxy\.)SystemProperties\.set\s*\('), 0, '属性写入'),
    ('ContentResolver.update', re.compile(r'\.update\s*\(\s*Settings\.[A-Za-z.]+CONTENT_URI'), -1, 'ContentValues 形态'),
    ('Provider.call', re.compile(r'\.call\s*\(\s*"([A-Za-z_]+)"'), -1, 'SettingsProvider call 通道'),
    ('Runtime.exec', re.compile(r'Runtime\.getRuntime\(\)\.exec\s*\('), -1, '命令执行'),
    ('ProcessBuilder', re.compile(r'new\s+ProcessBuilder\s*\('), -1, '命令执行'),
    ('settings-cmd', re.compile(r'"\s*settings\s+put\s+(?:global|system|secure)\s+'), -1, '显式 settings 命令'),
]

TRIGGER = ('Settings.', 'SystemProperties', 'Runtime.getRuntime', 'ProcessBuilder')

FIELD_DECL = re.compile(
    r'(?:static\s+final|final\s+static)\s+String\s+([A-Za-z_$][\w$]*)\s*=\s*"((?:[^"\\]|\\.)*)"')
INT_DECL = re.compile(
    r'(?:static\s+final|final\s+static)\s+int\s+([A-Za-z_$][\w$]*)\s*=\s*([-\w.]+)')
QUALIFIED = re.compile(r'^(?:[\w$]+\.)*([\w$]+)$')


def split_args(text, start):
    args, buf, depth, i = [], [], 0, start
    while i < len(text):
        ch = text[i]
        if ch in '([{':
            depth += 1
        elif ch in ')]}':
            if depth == 0:
                break
            depth -= 1
        elif ch == ',' and depth == 0:
            args.append(''.join(buf).strip())
            buf = []
            i += 1
            continue
        buf.append(ch)
        i += 1
    tail = ''.join(buf).strip()
    if tail:
        args.append(tail)
    return args


def strip_annotations(s):
    return re.sub(r'@\w+', '', s or '').strip()


def rel_source_path(abs_path, root):
    """把绝对路径裁剪成「sources/ 之后的包路径」，保证 TSV 里不含本机路径。

    <root>/sources/com/foo/Bar.java  ->  com/foo/Bar.java
    <root>/com/foo/Bar.java          ->  com/foo/Bar.java
    """
    p = abs_path.replace('\\', '/')
    marker = '/sources/'
    if marker in p:
        return p.split(marker, 1)[1]
    r = (root or '').replace('\\', '/').rstrip('/')
    if r and p.startswith(r + '/'):
        return p[len(r) + 1:]
    return os.path.basename(p)


def collect_consts(path):
    try:
        src = open(path, encoding='utf-8', errors='replace').read()
    except OSError:
        return {}, {}
    return dict(FIELD_DECL.findall(src)), dict(INT_DECL.findall(src))


def resolve_arg(arg, consts):
    a = strip_annotations(arg)
    if not a:
        return None, 'empty'
    m = re.match(r'^"((?:[^"\\]|\\.)*)"', a)
    if m:
        return m.group(1), 'literal'
    m = QUALIFIED.match(a)
    if m:
        name = m.group(1)
        if name in consts[0]:
            return consts[0][name], 'field-const'
        if name in consts[1]:
            return consts[1][name], 'field-const-int'
    return None, 'expr'


def scan(roots):
    rows = []
    for tag, root in roots:
        if not os.path.isdir(root):
            continue
        for dirpath, _d, files in os.walk(root):
            for fn in files:
                if not fn.endswith('.java'):
                    continue
                p = os.path.join(dirpath, fn)
                try:
                    src = open(p, encoding='utf-8', errors='replace').read()
                except OSError:
                    continue
                if not any(k in src for k in TRIGGER):
                    continue
                consts = collect_consts(p)
                for kind, rx, keyidx, note in APIS:
                    for m in rx.finditer(src):
                        line_no = src.count('\n', 0, m.start()) + 1
                        paren = src.find('(', m.start())
                        if paren < 0:
                            continue
                        args = split_args(src, paren + 1)
                        if keyidx == -1:
                            key_raw, key, how = '', '', 'n/a'
                        else:
                            key_raw = args[keyidx] if len(args) > keyidx else ''
                            key, how = resolve_arg(key_raw, consts)
                        rows.append({
                            'root': tag,
                            'file': rel_source_path(p, root),
                            'line': line_no,
                            'kind': kind,
                            'key_raw': strip_annotations(key_raw)[:80],
                            'key': key if key is not None else '',
                            'how': how,
                            'context': re.sub(r'\s+', ' ', src[m.start():m.start() + 130]).strip(),
                            'note': note,
                        })
    rows.sort(key=lambda r: (r['kind'], r['file'], r['line']))
    return rows


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--roots', nargs='*', help='tag=path 列表')
    ap.add_argument('--force', action='store_true',
                    help='即使命中数少于已有基线也覆盖（默认拒绝，防误覆盖）')
    a = ap.parse_args()

    roots = []
    if a.roots:
        for item in a.roots:
            t, p = item.split('=', 1) if '=' in item else (os.path.basename(item.rstrip('/')), item)
            roots.append((t, p))
    else:
        roots = DEFAULT_ROOTS

    rows = scan(roots)

    # 防误覆盖：默认只扫关键类时命中很少（<100），不要盖掉全量基线
    if not a.force and os.path.isfile(OUT_TSV):
        try:
            with open(OUT_TSV, encoding='utf-8') as f:
                old = sum(1 for _ in f) - 1
        except OSError:
            old = 0
        if len(rows) < old:
            print('!! 本次命中 %d 条 < 已有基线 %d 条，拒绝覆盖。' % (len(rows), old))
            print('   要覆盖请加 --force，或用 --roots 指向完整反编译目录（6 个 em dex + ds）。')
            print('   参考：python3 _work/sinks.py --roots em_key=DIR1 ds_key=DIR2 '
                  'em_full1=DIR3 em_full2=DIR4 em_full3=DIR5 em_full4=DIR6 em_full5=DIR7')
            return

    os.makedirs(os.path.dirname(OUT_TSV), exist_ok=True)
    with open(OUT_TSV, 'w', encoding='utf-8', newline='') as f:
        w = csv.DictWriter(f, fieldnames=['root', 'file', 'line', 'kind', 'key_raw',
                                          'key', 'how', 'context', 'note'],
                           delimiter='\t', quoting=csv.QUOTE_MINIMAL)
        w.writeheader()
        for r in rows:
            w.writerow(r)

    print('output :', OUT_TSV)
    print('rows   :', len(rows))
    print('by kind:', dict(Counter(r['kind'] for r in rows)))
    print('by how :', dict(Counter(r['how'] for r in rows)))

    puts = [r for r in rows if r['kind'] == 'Settings.Global.put']
    print()
    print('=== Settings.Global.put* = %d 处 ===' % len(puts))
    for r in puts:
        print('  %-44s :%-4s %-12s %s'
              % (os.path.basename(r['file'])[:44], r['line'], r['how'],
                 (r['key'] or ('<expr> ' + r['key_raw']))[:66]))

    print()
    print('--- 去重键名 ---')
    c = Counter(r['key'] or ('<expr>:' + r['key_raw']) for r in puts)
    for k, n in sorted(c.items()):
        print('  %-60s ×%d' % (k[:60], n))

    var = [r for r in puts if r['how'] in ('expr', 'empty')]
    print()
    print('=== 变量键候选 = %d ===' % len(var))
    for r in var:
        print('  %s:%s  raw=%s' % (os.path.basename(r['file']), r['line'], r['key_raw']))
        print('      %s' % r['context'][:120])

    with open(OUT_MD, 'w', encoding='utf-8') as f:
        f.write('# Settings.Global.* 写入点（由 `_work/sinks.py` 生成，勿手改）\n\n')
        f.write('## 全部调用\n\n| 文件 | 行 | 解析方式 | 键名 |\n|---|---|---|---|\n')
        for r in puts:
            f.write('| `%s` | %d | %s | `%s` |\n'
                    % (os.path.basename(r['file']), r['line'], r['how'],
                       (r['key'] or r['key_raw']).replace('|', '\\|')[:70]))
        f.write('\n## 变量键候选\n\n')
        if var:
            for r in var:
                f.write('- `%s:%d` raw=`%s`\n\n```java\n%s\n```\n\n'
                        % (os.path.basename(r['file']), r['line'], r['key_raw'], r['context']))
        else:
            f.write('无。\n')
    print()
    print('output :', OUT_MD)


if __name__ == '__main__':
    main()