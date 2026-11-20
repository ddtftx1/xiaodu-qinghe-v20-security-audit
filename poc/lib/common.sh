#!/system/bin/sh
# 公共函数库：日志、颜色、回滚注册

RED='\033[31m'; GREEN='\033[32m'; YELLOW='\033[33m'; CYAN='\033[36m'; RESET='\033[0m'

ROLLBACK_CMDS=""

log_info()  { printf "${CYAN}[*]${RESET} %s\n" "$*"; }
log_ok()    { printf "${GREEN}[+]${RESET} %s\n" "$*"; }
log_warn()  { printf "${YELLOW}[!]${RESET} %s\n" "$*"; }
log_err()   { printf "${RED}[-]${RESET} %s\n" "$*"; }

hr() { printf '%s\n' "------------------------------------------------------------"; }
banner() { echo; hr; printf '%s\n' "$1"; hr; }

# 注册回滚命令（在 EXIT 时提示）
register_rollback() {
  ROLLBACK_CMDS="${ROLLBACK_CMDS}\n  - $1"
}

print_rollback() {
  if [ -n "$ROLLBACK_CMDS" ]; then
    echo
    log_warn "回滚清单（请手动执行如有需要）:"
    printf "$ROLLBACK_CMDS\n"
  fi
}

# 检查导出状态（需要 aapt，可选）
check_exported() {
  PKG="$1"; COMP="$2"
  if command -v dumpsys >/dev/null 2>&1; then
    dumpsys package "$PKG" 2>/dev/null | grep -q "$COMP" \
      && log_ok "组件存在: $COMP" \
      || log_warn "未在 $PKG 中找到 $COMP"
  fi
}

trap print_rollback EXIT
