#!/bin/bash
read -p "Enter your commit message: " message
read -p "Enter your branch: " branch
sudo dnf install git
git add $1
git commit -m "$message"
git push origin "$branch"

