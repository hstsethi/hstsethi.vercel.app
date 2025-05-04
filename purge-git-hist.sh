#!/bin/sh

# date: 2025-02-04
default_branch="main"

git checkout --orphan temp
git add .
git commit -m "Initial"
git branch -D $default_branch
git branch -m $default_branch
git push -f --set-upstream origin $default_branch
git push -f --mirror $default_branch
git gc --aggressive --prune=all
