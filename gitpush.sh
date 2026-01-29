#!/bin/bash
read -p "Enter your commit message: " message
read -p "Enter your branch: " branch


if command -v git > /dev/null 2>&1; then

	echo "git has already been installed"

else
	echo "git not found installing..."
	sudo dnf install git > /dev/null 2>&1

	if [ $? -eq 0 ]; then
		echo "Successfully installed git, proceesing to pushing..."
	else

		echo "Encountered error while intalling git"
		exit 1
	fi
fi

# Git flow
git add $1
git commit -m "$message"
git push origin "$branch"

if [$? -eq 0 ]; then
	echo "Successfully push to branch $branch "
else
	echo "Error pushing to github"

fi



