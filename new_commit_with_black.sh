

if [ -n "$(git status --porcelain)" ]; then 
git config --local user.email "action@github.com" 
git config --local user.name "GitHub Action" 
git commit -m "black code formatting" -a 
git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git HEAD:$TRAVIS_BRANCH
echo "The black formating tool has made changes. Making commit."
else 
echo "No changes detected. Skipping commit"; 
fi


