#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
§5 收束：把 fw_scan.py 的粗命中，按「外部可达性」收敛成真正的候选表。

判据（三条全满足才算 candidate）：
  1. 该 APK 有至少一个 exported 的组件（audit.json）
  2. 该 APK 引用了 Settings$Global; 且带 put*
  3. 该 APK 的 package 是 system UID（shared == android.uid.system）
     —— 因为只有 uid 1000 才能无条件过 WRITE_SECURE_SETTINGS

输出 analysis/settings_sink_candidates.tsv

用法:
  python _work/sink_candidates.py
"""
import os
import json
import csv

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
AUDIT = os.path.join(REPO, 'analysis', 'audit.json')
FW = os.path.join(REPO, 'analysis', 'settings_sinks_firmware.tsv')
OUT = os.path.join(REPO, 'analysis', 'settings_sink_candidates.tsv')


def main():
    audit = json.load(open(AUDIT, encoding='utf-8'))
    apk2pkg = {}
    for x in audit:
        apk = x.get('apk') or ''
        apk2pkg[os.path.abspath(apk)] = x

    rows = []
    with open(FW, encoding='utf-8', newline='') as f:
        for r in csv.DictReader(f, delimiter='\t'):
            hits = r['hits']
            if 'Global.put' not in hits:
                continue
            apk = r['apk']
            info = apk2pkg.get(os.path.abspath(apk))
            if info is None:
                # apk 路径可能在 audit 里是同一个，做一次 basename 回退匹配
                for k, v in apk2pkg.items():
                    if os.path.basename(k) == os.path.basename(apk):
                        info = v
                        break
            pkg = info['pkg'] if info else ''
            shared = info.get('shared') if info else None

            comps = (info.get('comps') or []) if info else []
            exported = [c for c in comps
                        if (c.get('exported') or '').lower() in ('true', 'def')]
            no_perm = [c for c in exported
                       if not c.get('permission') and not c.get('read') and not c.get('write')]

            rows.append({
                'apk': os.path.basename(apk),
                'apk_path': apk,
                'pkg': pkg,
                'shared': shared or '',
                'hits': hits,
                'exported_comps': len(exported),
                'exported_no_perm': len(no_perm),
                'verdict': '',
            })

    # 定级
    for r in rows:
        if r['shared'] == 'android.uid.system':
            if r['exported_no_perm'] > 0:
                r['verdict'] = 'CANDIDATE-A: uid1000 + 无权限导出组件 + Global.put'
            elif r['exported_comps'] > 0:
                r['verdict'] = 'CANDIDATE-B: uid1000 + 有导出组件(带权限) + Global.put'
            else:
                r['verdict'] = 'uid1000 但无导出组件'
        else:
            r['verdict'] = 'non-uid1000（不经 31317 路径）'

    rows.sort(key=lambda x: (not x['verdict'].startswith('CANDIDATE'),
                             -x['exported_no_perm'], x['apk']))

    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, 'w', encoding='utf-8', newline='') as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys()) if rows else
                           ['apk', 'apk_path', 'pkg', 'shared', 'hits',
                            'exported_comps', 'exported_no_perm', 'verdict'],
                           delimiter='\t')
        w.writeheader()
        for r in rows:
            w.writerow(r)

    print('Global.put 命中 APK:', len(rows))
    print('output:', OUT)
    print()

    cand = [r for r in rows if r['verdict'].startswith('CANDIDATE')]
    print('=== CANDIDATE = %d ===' % len(cand))
    for r in cand:
        print('%-34s %-30s exp=%-3d noperm=%-3d  %s'
              % (r['apk'][:34], r['pkg'][:30],
                 r['exported_comps'], r['exported_no_perm'], r['verdict'][:34]))

    print()
    print('=== 其余 uid1000 但无导出组件（不可外部触发） ===')
    for r in rows:
        if r['shared'] == 'android.uid.system' and r['exported_comps'] == 0:
            print('  %-38s %s' % (r['apk'][:38], r['pkg']))


if __name__ == '__main__':
    main()