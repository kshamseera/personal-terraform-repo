#!/bin/bash

set -e

git fetch

git switch master
# pwdval=$(pwd)
# Cds into the repo root
# cd $${pwdval%aaf-terraform*}/aaf-terraform || exit
# echo "$(pwd)"
git checkout master
git config user.email "ci@aaf.edu.au"
git config user.name "AAF CI"
echo Hello > README.md
git add README.md
git pull --ff-only
git commit -m "Update README.md"
git push