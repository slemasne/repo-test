bump2version patch --message "Bump version: {current_version} to {new_version} [ci skip]"
git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git master
echo "Making commit with incremented version"