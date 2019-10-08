#!/bin/bash

# Assign the input variable
Action=${1}

version=1.0.0

# Create the function that installs all
function update_install() {

	# Update all packages	
	#sudo yum update -y

	# Install git
	#sudo yum install git -y

	# Install Nginx
	#sudo amazon-linux-extras install nginx1.12 -y

	# Configure nginx to auto start
	#sudo chkconfig nginx on

	# Start nginx service
	#sudo service nginx start

	echo "You have entered the updat function"

}

function remove_files() {

	# Stop the nginx service
	#sudo service nginx stop

	# Delete the files in root directory
	#sudo rm -r /usr/share/nginx/html/*

	# Uninstall the nginx software
	#sudo remove nginx -y

	echo " You have removed all files"

}

function display_help() {

cat << EOF
	Usage: ${0} {-h|--help|-r|--remove|-v|--version} <filename>

	Options:
		-h | --help	Display command help
		-r | --remove	Remove and uninstall Nginx
		-v | --version	Display version
		Defult		Update and install software
EOF
	
	#echo "HELP ME PLEASE"

}

function version_number() {

	echo "Version Number: "$version
}

case "$Action" in
	-r | --remove)
		remove_files
		;;
	-v | --version)
		version_number
		;;
	-h | --help)
		display_help
		;;
	*)
		update_install
		exit 1

esac
