#!/bin/bash

api_version=$(cat __version__.py | grep __version__ |  awk '{split($0, a, "="); print a[2]}' | tr -d ' "')

IFS='.' read -a version_split <<< "${api_version}"

current_patch=${version_split[2]}

new_patch=$(echo "$current_patch + 1" | tr -d $'\r' | bc)

new_version="${version_split[0]}.${version_split[1]}.$new_patch"

echo $new_version
