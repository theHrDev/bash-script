#!/bin/bash

packageone=git
packagetwo=httpd

read -p "Enter the name for the cloned folder: " name

sudo dnf install $packageone -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "git successfully installed"
	git clone https://github.com/Dev-Ruqoyah/online-banking.git $name > /dev/null 2>&1
	echo "successfully cloned the repo and renamed to $name"

	sudo dnf install $packagetwo -y > /dev/null  2>&1
	if [ $? -eq 0 ]; then
		echo "successfully installed $packagetwo"
		sudo systemctl start "$packagetwo"
		sudo systemctl enable "$packagetwo"
		echo "$packagetwo started successfully"

		sudo rm -rf /var/www/html/*
		sudo mv "$name"/* /var/www/html
		echo "successfully hosted the folder"
	else
		echo "Error installing $packagetwo "
	fi

else
	echo "Error installing $packageone "

fi
		
