#!/bin/bash

last_commit_message=$(git log -1 HEAD --pretty=format:%s)
#last_commit_message_prefix=${last_commit_message:0:25}

echo "Last commit message: $last_commit_message"

if [[ "$last_commit_message" == "Bump version"* ]]; then
	echo "last commit is travis"
else
	echo "last commit not travis"
fi
