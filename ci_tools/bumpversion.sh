#!/bin/bash

last_commit_message=$(git log -1 HEAD --pretty=format:%s)

# find next version
api_version=$(cat __version__.py | grep __version__ |  awk '{split($0, a, "="); print a[2]}' | tr -d ' "')
IFS='.' read -a version_split <<< "${api_version}"
current_patch=${version_split[2]}
new_patch=$(echo "$current_patch + 1" | tr -d $'\r' | bc)
new_version="${version_split[0]}.${version_split[1]}.$new_patch"

echo "Last commit message: $last_commit_message"
if [[ "$last_commit_message" == "Bump version"* ]]; then
	echo "last commit is a bump version commit... skipping..."
else
	echo "Bumping packaging patch version from $api_version to $new_version"
	bump2version patch --message "Bump version in Travis CI: {current_version} to {new_version} [ci skip]"
	git config --global user.email "slemasne@test.com"
	git config --global user.name "slm-travis-bot"
	git push https://slemasne:${GH_TOKEN}@github.com/slemasne/repo-test.git HEAD:$TRAVIS_BRANCH
	echo "Making commit with incremented version"
fi