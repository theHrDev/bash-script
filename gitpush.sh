#!/bin/bash
read -p "Enter your commit message: " message
sudo dnf install git
git add $1
git commit -m "$message"
git push origin main

