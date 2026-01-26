#!/bin/bash
read -p "Enter your commit message: " message
read -p "Enter your branch: " branch
sudo dnf install git > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "git successfully installed"
	git add $1

        git commit -m "$message"
        git push origin "$branch"

	echo "successfully pushed to branch $branch"

else
	echo "Error occured while installing git"

fi

