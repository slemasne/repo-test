bump2version patch
if [ -n "$(git status --porcelain)" ]; then
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git HEAD:$TRAVIS_BRANCH
echo "Making commit with incremented version"
else
echo "No changes detected. Skipping commit";
fi