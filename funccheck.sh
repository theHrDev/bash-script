#!/bin/bash

function host_web(){
	sudo rm -rf /var/www/html/*
	echo "deleted successfully"
}

#install git
if command -v git; then
	echo "git has already been installed"
else
	sudo dnf install git -y

fi

#install and start httpd
if command -v httpd; then
	echo "http has been installed, starting httpd"
	sudo systemctl start httpd
	sudo systemctl enable httpd
else
	sudo dnf install httpd -y
	echo "httpd installed successfully"
fi

