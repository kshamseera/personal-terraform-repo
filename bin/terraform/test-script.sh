#!/bin/bash

set -e

git fetch

git switch main
# pwdval=$(pwd)
# Cds into the repo root
# cd $${pwdval%aaf-terraform*}/aaf-terraform || exit
# echo "$(pwd)"
git checkout main
git config user.email "testemail@aaf.edu.au"
git config user.name "AAF CI test user"
echo Personal repo > README.md
git add README.md
git pull --ff-only
git commit -m "Update README.md"
git push