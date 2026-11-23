#!/usr/bin/env bash
# Back to the v2 format.
set -euo pipefail
cd "$(dirname "$0")/.."
cp feed/v2.json feed/advisories.json
git add -A && git commit -m "feed: back to v2" && git push
