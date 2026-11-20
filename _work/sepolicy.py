import re

F = '/vendor/etc/selinux/vendor_sepolicy.cil'
txt = open(F, encoding='utf-8', errors='ignore').read()

# 提取某个 domain 的全部 allow 规则
def rules(domain):
    pat = re.compile(r'\(allow\s+' + re.escape(domain) + r'\s+(\S+)\s+\(([^)]*)\)\)', re.S)
    out = {}
    for m in pat.finditer(txt):
        tgt, perms = m.group(1), ' '.join(m.group(2).split())
        out.setdefault(tgt, set()).update(perms.split())
    return out

for dom in ['sprd_validationtools_app', 'sprd_logmanager_app', 'sprd_autoslt_app']:
    r = rules(dom)
    print('=' * 78)
    print('DOMAIN:', dom, ' 目标类型数:', len(r))
    print('=' * 78)
    for tgt in sorted(r):
        ps = sorted(r[tgt])
        # 只关注有写/执行能力的
        if any(p in ps for p in ('write', 'create', 'execute', 'setattr', 'unlink',
                                 'rename', 'relabelfrom', 'relabelto', 'append', 'set')):
            print('  %-42s %s' % (tgt, ' '.join(ps)))
    print()