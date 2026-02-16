#!/bin/bash

function host_web(){
	sudo git clone https://github.com/codewithsadee/vcard-personal-portfolio.git portfolio

	sudo rm -rf /var/www/html/*
	echo "deleted successfully"
	sudo mv portfolio/* /var/www/html/
	echo "successfully moved the project"
}

#install git
if command -v git; then
	echo "git has already been installed"
else
	sudo dnf install git -y > /dev/null  2>&1

fi

#install and start httpd
if command -v httpd; then
	echo "http has been installed, starting httpd"
	sudo systemctl start httpd
	sudo systemctl enable httpd
else
	sudo dnf install httpd -y > /dev/null 2>&1
	echo "httpd installed successfully"
fi

#calling the function(without bracket)
host_web

