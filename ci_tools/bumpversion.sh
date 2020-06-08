bump2version patch --message "Bump version in Travis CI: {current_version} to {new_version} [ci skip]"
git config --global user.email "slemasne@test.com"
git config --global user.name "slm-travis-bot"
git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git HEAD:$TRAVIS_BRANCH
echo "Making commit with incremented version"