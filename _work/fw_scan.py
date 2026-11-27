#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
全固件 Settings 写入入口扫描（字节码层，不依赖反编译）

§5 要求的四种形态：
  A. Settings.Global.put*(cr, <变量>, v)
  B. ContentResolver.update(Settings.Global.CONTENT_URI, ContentValues)
  C. IContentProvider.call("PUT_global", name, extras)
  D. Provider 转发：name 来自 Uri 的 path segment

做法：在 dex 原始字节上做 substr 搜索（C 层 bytes.find，不逐字节解码），
先定位「谁引用了 Settings$Global;」，再对该 APK 定向反编译。

用法（仓库根）:
  python _work/fw_scan.py
  python _work/fw_scan.py --dirs /system_ext/app
"""
import os
import csv
import zipfile
import argparse

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(REPO, 'analysis', 'settings_sinks_firmware.tsv')

APK_DIRS = [
    '/system/app', '/system/priv-app',
    '/system_ext/app', '/system_ext/priv-app',
    '/product/app', '/product/priv-app',
    '/vendor/app', '/vendor/priv-app',
]

# label -> (必须全部命中的字节串)
PROBES = {
    'Global.put':       (b'Settings$Global;', b'putInt'),
    'Global.putString': (b'Settings$Global;', b'putString'),
    'System.put':       (b'Settings$System;', b'putInt'),
    'Secure.put':       (b'Settings$Secure;', b'putString'),
    'Provider.call.PUT': (b'PUT_global',),
    'Provider.call.URI': (b'Settings$Global$NameValueTable;', b'call'),
    'update.ContentValues': (b'Settings$Global$NameValueTable;', b'update'),
    'exempt':           (b'hidden_api_blacklist_exemptions',),
    'settings-cmd':     (b'settings', b'put'),
}


def list_apks(roots):
    out = []
    for root in roots:
        if not os.path.isdir(root):
            continue
        for dirpath, _d, files in os.walk(root):
            for fn in files:
                if fn.endswith('.apk'):
                    out.append(os.path.join(dirpath, fn))
    return sorted(set(out))


def scan_apk(path):
    """返回命中的 label 列表。只在 dex 字节流里做 substr 查找。"""
    try:
        with zipfile.ZipFile(path) as z:
            blobs = []
            for n in z.namelist():
                if n.endswith('.dex'):
                    blobs.append(z.read(n))
    except (zipfile.BadZipFile, OSError, RuntimeError):
        return []
    if not blobs:
        return []

    hits = []
    for label, needles in PROBES.items():
        ok = True
        for nd in needles:
            if not any(nd in b for b in blobs):
                ok = False
                break
        if ok and label not in hits:
            hits.append(label)

    # Settings$Global; + put* 组合才算真正的 Global 写入点
    has_global = any(b'Settings$Global;' in b for b in blobs)
    if has_global:
        puts = [p.decode() for p in
                (b'putInt', b'putString', b'putLong', b'putFloat')
                if any(p in b for b in blobs)]
        if puts and 'Global.put' not in hits:
            hits.append('Global.put')
        if puts:
            hits = [h for h in hits if h != 'Global.put'] + ['Global.put(%s)' % '/'.join(puts)]
    return hits


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--dirs', nargs='*', default=APK_DIRS)
    a = ap.parse_args()

    apks = list_apks(a.dirs)
    print('扫描 APK 数:', len(apks), flush=True)

    rows = []
    for i, p in enumerate(apks, 1):
        h = scan_apk(p)
        if h:
            rows.append({'apk': p, 'hits': ','.join(h)})
        if i % 20 == 0:
            print('  ...%d/%d' % (i, len(apks)), flush=True)

    with open(OUT, 'w', encoding='utf-8', newline='') as f:
        w = csv.DictWriter(f, fieldnames=['apk', 'hits'], delimiter='\t')
        w.writeheader()
        for r in rows:
            w.writerow(r)

    print('命中 APK 数:', len(rows))
    print()
    for r in rows:
        print('  %-56s %s' % (os.path.basename(r['apk'])[:56], r['hits']))
    print()
    print('output:', OUT)


if __name__ == '__main__':
    main()