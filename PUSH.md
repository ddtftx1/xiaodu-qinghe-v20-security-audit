# 推送到 Git 仓库指引

本地仓库已初始化并完成首次提交（commit: `e7f234b`）。

## 方式一：推送到新仓库（GitHub / Gitee）

```bash
cd /storage/emulated/0/漏洞

# 1) 在网页端创建空仓库（不要勾选 README/License，避免冲突）
#    例如: git@github.com:<你的用户名>/android12-sprd-audit.git

# 2) 关联远程并推送
git remote add origin git@github.com:<你的用户名>/android12-sprd-audit.git
git branch -M main
git push -u origin main
```

HTTPS 方式：

```bash
git remote add origin https://github.com/<用户名>/android12-sprd-audit.git
git push -u origin main
```

## 方式二：直接打包上传

```bash
cd /storage/emulated/0
# 排除 .git 与编译产物
tar --exclude='.git' -czf audit-report.tar.gz 漏洞/
```

## 建议的仓库信息

| 项 | 建议值 |
|----|--------|
| 仓库名 | `android12-sprd-ums9230-audit` |
| 描述 | Android 12 (SPRD/Unisoc ums9230) 系统应用安全审计 — 13 个漏洞 |
| 可见性 | Public（披露后）或 Private（厂商沟通期间）|
| Topics | `android-security`, `vulnerability-research`, `sprd`, `unisoc`, `cve`, `android12` |

## 负责任披露建议

提交到公开仓库**之前**，建议：

1. 先通过厂商安全响应渠道报送（展锐 / 设备 OEM）
2. 申请 CNVD 或 CVE 编号
3. 约定 90 天披露窗口
4. 披露时在 README 顶部加「已披露」声明

如需申请 CVE，可在 https://cveform.mitre.org/ 提交，
参考已有的同类 CVE（如 CVE-2024-31317）描述格式。

## 提交规范建议

后续追加漏洞时：

```
docs/V16-<short-name>.md     ← 新增文档
poc/poc.sh                   ← 追加到脚本
analysis/                    ← 更新数据
CHANGELOG.md                 ← 记录变更
README.md                    ← 更新索引表

git commit -m "feat(V16): 简述"
```
