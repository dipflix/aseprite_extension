#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="${1:-src}"
OUT_DIR="${2:-dist}"

if [[ ! -f "${SRC_DIR}/package.json" ]]; then
  echo "package.json not found in source directory: ${SRC_DIR}" >&2
  exit 1
fi

PYTHON_BIN=""
if command -v python3 >/dev/null 2>&1; then
  PYTHON_BIN="python3"
elif command -v python >/dev/null 2>&1; then
  PYTHON_BIN="python"
else
  echo "Python is required to read package.json." >&2
  exit 1
fi

read -r NAME VERSION <<EOF
SRC_DIR="$SRC_DIR" "$PYTHON_BIN" - <<'PY'
import json
import os
src_dir = os.environ.get("SRC_DIR", "src")
with open(os.path.join(src_dir, "package.json"), "r", encoding="utf-8") as f:
    pkg = json.load(f)
print(pkg.get("name", "aseprite_extension"), pkg.get("version", "0.0.0"))
PY
)
EOF

OUT_NAME="${NAME}-${VERSION}.aseprite-extension"
OUT_PATH="${OUT_DIR}/${OUT_NAME}"

mkdir -p "$OUT_DIR"

if ! command -v zip >/dev/null 2>&1; then
  echo "zip command not found. Please install zip." >&2
  exit 1
fi

rm -f "$OUT_PATH"

(
  cd "$SRC_DIR"
  zip -r "../$OUT_PATH" .
)

echo "Created: $OUT_PATH"
