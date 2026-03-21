#!/bin/zsh
set -euo pipefail

if [[ $# -ne 3 ]]; then
  echo "Usage: $0 <input.html> <output.png> <ratio>" >&2
  exit 1
fi

input_path=$1
output_path=$2
ratio_key=$3

case "$ratio_key" in
  "3:4")
    width=1500
    height=2000
    ;;
  "4:3")
    width=2000
    height=1500
    ;;
  "1:1")
    width=1800
    height=1800
    ;;
  "16:9")
    width=1920
    height=1080
    ;;
  "9:16")
    width=1080
    height=1920
    ;;
  "2.35:1")
    width=2350
    height=1000
    ;;
  "3:1")
    width=1800
    height=600
    ;;
  "5:2")
    width=2500
    height=1000
    ;;
  *)
    echo "Unsupported ratio: $ratio_key" >&2
    echo "Supported ratios: 3:4, 4:3, 1:1, 16:9, 9:16, 2.35:1, 3:1, 5:2" >&2
    exit 1
    ;;
esac

chrome_bin=${CHROME_BIN:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}

if [[ ! -x "$chrome_bin" ]]; then
  echo "Chrome binary not found: $chrome_bin" >&2
  exit 1
fi

if [[ ! -f "$input_path" ]]; then
  echo "Input HTML not found: $input_path" >&2
  exit 1
fi

mkdir -p "$(dirname "$output_path")"

abs_input_path=$(cd "$(dirname "$input_path")" && pwd)/$(basename "$input_path")
abs_output_path=$(cd "$(dirname "$output_path")" && pwd)/$(basename "$output_path")
input_url="file://${abs_input_path}"

"$chrome_bin" \
  --headless=new \
  --disable-gpu \
  --hide-scrollbars \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=5000 \
  --force-device-scale-factor=1 \
  --window-size="${width},${height}" \
  --screenshot="$abs_output_path" \
  "$input_url"

echo "Saved screenshot to $abs_output_path"
