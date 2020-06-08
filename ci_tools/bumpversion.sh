#!/bin/bash

last_commit_message=$(git log -1 HEAD --pretty=format:%s)
echo "Last commit message: $last_commit_message"
if [[ "$last_commit_message" == "Bump version"* ]]; then
	echo "last commit is a bump version commit... skipping..."
else
	echo "Bumping packaging patch version by 1"
	bump2version patch --message "Bump version in Travis CI: {current_version} to {new_version} [ci skip]"
	git config --global user.email "slemasne@test.com"
	git config --global user.name "slm-travis-bot"
	git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git HEAD:$TRAVIS_BRANCH
	echo "Making commit with incremented version"
fi