#!/usr/bin/env bash
# Publish the v3 format without warning consumers (the on-call incident).
set -euo pipefail
cd "$(dirname "$0")/.."
cp feed/v3.json feed/advisories.json
printf '\n## %s\nv3 published: risk_level -> severity.level, alt_band -> altitude (flight levels).\n' "$(date -u +%FT%TZ)" >> CHANGELOG.md
git add -A && git commit -m "feed: publish v3" && git push
