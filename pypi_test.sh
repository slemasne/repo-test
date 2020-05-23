#!/bin/bash -e

if [[ (${#1} -eq 0) ]] ; then
    echo
    echo "[ERROR] missing username"
    echo
    exit 1
fi

if [[ (${#2} -eq 0) ]] ; then
    echo
    echo "[ERROR] missing password"
    echo
    exit 1
fi

pypi_username=$1
pypi_password=$2

echo "blah blah blah $pypi_username"