#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_BIN="${SCRIPT_DIR}/auditx-cli.py"

chmod +x "$TARGET_BIN"

# Check installation target
if [ -d "$HOME/.local/bin" ]; then
    INSTALL_DIR="$HOME/.local/bin"
    ln -sf "$TARGET_BIN" "$INSTALL_DIR/auditx-cli"
    ln -sf "$TARGET_BIN" "$INSTALL_DIR/auditx"
    echo "[+] Symlinked to $INSTALL_DIR/auditx-cli and $INSTALL_DIR/auditx"
elif command -v sudo >/dev/null 2>&1; then
    sudo ln -sf "$TARGET_BIN" /usr/local/bin/auditx-cli
    sudo ln -sf "$TARGET_BIN" /usr/local/bin/auditx
    echo "[+] Symlinked to /usr/local/bin/auditx-cli and /usr/local/bin/auditx"
else
    echo "[!] Could not determine bin directory. Run directly with: python3 $TARGET_BIN"
    exit 1
fi

echo "[✓] AuditX CLI setup successfully!"
echo "    Run 'auditx-cli' or 'auditx' to start."
