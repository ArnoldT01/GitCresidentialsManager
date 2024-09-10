#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <username> <email>"
    exit 1
fi

USERNAME=$1
EMAIL=$2

git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

echo "Git configuration updated:"
echo "Username: $(git config --global user.name)"
echo "Email: $(git config --global user.email)"

sleep 3
