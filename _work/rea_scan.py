#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
全量重审：从 APK 原始清单重新解析系统应用组件与权限声明。

独立于 analysis/audit.json —— 用 aapt dump xmltree 重新读一遍，
用来交叉核对旧基线是否漏项/错项。

输出:
  analysis/rea_components.tsv   组件（activity/service/receiver/provider/alias）
  analysis/rea_perm_decls.tsv   <permission> 声明及其 protectionLevel
  analysis/rea_uses_perm.tsv    <uses-permission> 清单

用法（仓库根）:
  python3 _work/rea_scan.py                  # 全固件
  python3 _work/rea_scan.py --limit 5        # 冒烟
  python3 _work/rea_scan.py --dirs /system/app
"""
import os
import re
import csv
import argparse
import subprocess

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

APK_DIRS = ['/system/app', '/system/priv-app',
            '/system_ext/app', '/system_ext/priv-app',
            '/product/app', '/product/priv-app',
            '/vendor/app', '/vendor/priv-app']

COMP_TAGS = {'activity', 'activity-alias', 'service', 'receiver', 'provider'}
# 这些标签一律不算组件（防止把 uses-permission 等误当组件）
SKIP_TAGS = {
    'manifest', 'application', 'uses-permission', 'uses-permission-sdk-23',
    'uses-library', 'permission', 'permission-tree', 'permission-group',
    'intent-filter', 'action', 'category', 'data', 'meta-data',
    'grant-uri-permission', 'path-permission', 'queries', 'package',
    'uses-feature', 'supports-screens', 'instrumentation', 'profileable',
    'uses-sdk', 'uses-configuration', 'uses-native-library',
    'property', 'layout', 'static-library', 'shared-library',
}

RE_ELEM = re.compile(r'^\s*E: ([\w-]+) \(line=(\d+)\)')
RE_ATTR = re.compile(
    r'^\s*A: ((?:[\w]+:)?[\w:]+?)\(0x[0-9a-f]+\)=(?:"([^"]*)"|\(type 0x[0-9a-f]+\)(0x[0-9a-f]+))'
)


def attr_key(raw):
    return raw.split(':')[-1]


def coerce(k, v):
    """把 aapt 的十六进制布尔/int 还原成人话。"""
    if v is None:
        return ''
    if k in ('exported', 'enabled', 'grantUriPermissions', 'debuggable'):
        if v in ('0xffffffff', '0x1', 'true'):
            return 'true'
        if v in ('0x0', 'false'):
            return 'false'
    return v


def badging_pkg(apk):
    """aapt dump xmltree 不输出 package 名，用 badging 补。"""
    try:
        r = subprocess.run(['aapt', 'dump', 'badging', apk],
                           capture_output=True, text=True, timeout=120,
                           errors='replace')
        m = re.search(r"^package: name='([^']*)'", r.stdout, re.M)
        return m.group(1) if m else ''
    except (subprocess.TimeoutExpired, OSError):
        return ''


def dump_tree(apk):
    try:
        r = subprocess.run(['aapt', 'dump', 'xmltree', apk, 'AndroidManifest.xml'],
                           capture_output=True, text=True, timeout=180,
                           errors='replace')
        return r.stdout
    except (subprocess.TimeoutExpired, OSError):
        return ''


def parse(xmltree):
    pkg, shared = '', ''
    comps, perm_decls, uses_perms = [], [], []

    # 只在 <manifest> 的第一层属性里找 package / sharedUserId
    m = re.search(r'^\s*A: package\(0x[0-9a-f]+\)="([^"]*)"', xmltree, re.M)
    if m:
        pkg = m.group(1)
    m = re.search(r'^\s*A: (?:\w+:)?sharedUserId\(0x[0-9a-f]+\)="([^"]*)"', xmltree, re.M)
    if m:
        shared = m.group(1)

    cur = None          # 当前正在收集的节点

    def flush():
        nonlocal cur
        if cur is not None:
            comps.append(cur)
            cur = None

    for ln in xmltree.splitlines():
        me = RE_ELEM.match(ln)
        if me:
            tag = me.group(1)
            if tag in COMP_TAGS:
                flush()
                cur = {'type': tag, 'attrs': {}}
            elif tag == 'permission':
                flush()
                cur = {'type': 'PERMDECL', 'attrs': {}}
            elif tag == 'uses-permission' or tag == 'uses-permission-sdk-23':
                flush()
                cur = {'type': 'USESPERM', 'attrs': {}}
            elif tag in SKIP_TAGS:
                flush()
            # 未知标签：保持 cur 不变（可能是自定义子节点）
            continue
        ma = RE_ATTR.match(ln)
        if ma and cur is not None:
            k = attr_key(ma.group(1))
            v = ma.group(2) if ma.group(2) is not None else ma.group(3)
            cur['attrs'][k] = coerce(k, v)

    flush()

    out_comps = []
    for c in comps:
        a = c['attrs']
        if c['type'] == 'PERMDECL':
            if a.get('name'):
                perm_decls.append({
                    'perm': a['name'],
                    'level': a.get('protectionLevel', '<MISSING>'),
                })
            continue
        if c['type'] == 'USESPERM':
            if a.get('name'):
                uses_perms.append(a['name'])
            continue
        if not a.get('name'):
            continue
        out_comps.append({
            'type': c['type'],
            'name': a.get('name', ''),
            'exported': a.get('exported', '<none>'),
            'permission': a.get('permission', ''),
            'read': a.get('readPermission', ''),
            'write': a.get('writePermission', ''),
            'authorities': a.get('authorities', ''),
            'process': a.get('process', ''),
            'enabled': a.get('enabled', ''),
            'grantUri': a.get('grantUriPermissions', ''),
            'targetActivity': a.get('targetActivity', ''),
        })
    return pkg, shared, out_comps, perm_decls, uses_perms


def list_apks(dirs):
    res = []
    for d in dirs:
        if not os.path.isdir(d):
            continue
        for root, _x, files in os.walk(d):
            for f in files:
                if f.endswith('.apk'):
                    res.append(os.path.join(root, f))
    return sorted(set(res))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--limit', type=int, default=0)
    ap.add_argument('--dirs', nargs='*', default=APK_DIRS)
    a = ap.parse_args()

    apks = list_apks(a.dirs)
    if a.limit:
        apks = apks[:a.limit]
    print('APK 数:', len(apks), flush=True)

    comp_rows, perm_rows, uses_rows = [], [], []
    no_parse = []

    for i, apk in enumerate(apks, 1):
        tree = dump_tree(apk)
        if not tree.strip():
            no_parse.append(apk)
            continue
        pkg, shared, comps, decls, uses = parse(tree)
        if not pkg:
            pkg = badging_pkg(apk)
        for c in comps:
            c.update({'apk': apk, 'pkg': pkg, 'shared': shared})
            comp_rows.append(c)
        for d in decls:
            d.update({'apk': apk, 'pkg': pkg})
            perm_rows.append(d)
        for u in uses:
            uses_rows.append({'apk': apk, 'pkg': pkg, 'perm': u})
        if i % 20 == 0:
            print('  ...%d/%d  组件=%d' % (i, len(apks), len(comp_rows)), flush=True)

    def write(path, fields, rows):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'w', encoding='utf-8', newline='') as f:
            w = csv.DictWriter(f, fieldnames=fields, delimiter='\t',
                               quoting=csv.QUOTE_MINIMAL, extrasaction='ignore')
            w.writeheader()
            for r in rows:
                w.writerow(r)

    write(os.path.join(REPO, 'analysis', 'rea_components.tsv'),
          ['pkg', 'shared', 'apk', 'type', 'name', 'exported', 'permission',
           'read', 'write', 'authorities', 'process', 'enabled', 'grantUri',
           'targetActivity'],
          comp_rows)
    write(os.path.join(REPO, 'analysis', 'rea_perm_decls.tsv'),
          ['pkg', 'apk', 'perm', 'level'], perm_rows)
    write(os.path.join(REPO, 'analysis', 'rea_uses_perm.tsv'),
          ['pkg', 'apk', 'perm'], uses_rows)

    print()
    print('APK 数        :', len(apks))
    print('解析失败      :', len(no_parse))
    for x in no_parse[:5]:
        print('   ', x)
    print('组件行        :', len(comp_rows))
    print('权限声明      :', len(perm_rows))
    print('uses-permission:', len(uses_rows))

    from collections import Counter
    print()
    print('组件类型分布:', dict(Counter(r['type'] for r in comp_rows)))
    print('exported 分布:', dict(Counter(r['exported'] for r in comp_rows)))
    print('system UID 包:', len({r['pkg'] for r in comp_rows
                               if r['shared'] == 'android.uid.system'}))


if __name__ == '__main__':
    main()