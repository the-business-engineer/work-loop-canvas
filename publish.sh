#!/bin/bash
# Publish this folder as a public GitHub repo + a v1.0 release with the book PDF and the lecture video.
# Needs: GITHUB_TOKEN (fine-grained: Administration + Contents read/write on the new repo, or classic 'repo'), GH_OWNER (user or org).
# Usage: GITHUB_TOKEN=... GH_OWNER=... ./publish.sh            (repo name: work-loop-canvas)
set -euo pipefail
: "${GITHUB_TOKEN:?set GITHUB_TOKEN}"; : "${GH_OWNER:?set GH_OWNER}"; NAME="${REPO_NAME:-work-loop-canvas}"
API=https://api.github.com; H=(-H "Authorization: Bearer $GITHUB_TOKEN" -H "Accept: application/vnd.github+json")
sed -i '' "s#github.com/OWNER/#github.com/$GH_OWNER/#" README.md
ME=$(curl -s "${H[@]}" $API/user | python3 -c 'import sys,json;print(json.load(sys.stdin)["login"])')
BODY='{"name":"'$NAME'","description":"The Work Loop Canvas: a free Claude skill, book and lecture for getting AI into the core of a firm","homepage":"https://businessengineer.ai","has_issues":true}'
if [ "$ME" = "$GH_OWNER" ]; then URL=$API/user/repos; else URL=$API/orgs/$GH_OWNER/repos; fi
curl -s -o /dev/null -w "create repo: %{http_code}\n" "${H[@]}" -X POST "$URL" -d "$BODY"
git init -q 2>/dev/null || true; git add -A; git -c user.name="Gennaro Cuofano" -c user.email="admin@fourweekmba.com" commit -q -m "The Work Loop Canvas: skill, README, licences" || true
git branch -M main
git push -q "https://x-access-token:$GITHUB_TOKEN@github.com/$GH_OWNER/$NAME.git" main
REL=$(curl -s "${H[@]}" -X POST $API/repos/$GH_OWNER/$NAME/releases -d '{"tag_name":"v1.0","name":"The Work Loop Canvas v1.0","body":"The book (PDF) and the full lecture (MP4). The Claude skill is in skills/."}')
UP=$(echo "$REL" | python3 -c 'import sys,json;print(json.load(sys.stdin)["upload_url"].split("{")[0])')
for f in release-assets/the-work-loop-canvas.pdf:application/pdf release-assets/the-work-loop-canvas-lecture.mp4:video/mp4; do
  p=${f%%:*}; t=${f##*:}
  curl -s -o /dev/null -w "upload $(basename $p): %{http_code}\n" "${H[@]}" -H "Content-Type: $t" --data-binary @"$p" "$UP?name=$(basename $p)"
done
echo "https://github.com/$GH_OWNER/$NAME"
