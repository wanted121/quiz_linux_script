#!/bin/bash
echo "Welcome to signup pages"
	read -p "Enter username " user
	echo ""
	read -p "Enter password" -s passwd1
	echo ""
	read -p "Enter password again" -s passwd2
	echo ""
	echo "$user:$passwd1:$passwd2" >> data.csv


