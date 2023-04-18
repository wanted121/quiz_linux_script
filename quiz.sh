#!/bin/bash
echo "Welcome to Linux Quiz"
echo "1. Signup"
echo "2. Login"
echo "Choose your options:"
read opt

if [ $opt -eq "1" ];then
	echo "signup"
#	sh ./signup.sh
	echo "Welcome to signup pages"
	read -p "Enter username " user
	echo ""
	
	if [ -z "$user" ];then
		echo "Please Enter username"
	else
		read -p "Enter password" -s passwd1
		echo ""
		read -p "Enter password again" -s passwd2
		echo ""
		if [ "$passwd1" = "$passwd2" ];then
			echo "user created successful"
			echo "$user:$passwd1" >> data.csv
		else
			echo "password not matches please enter a valid password"
			
		fi
	fi
	

elif [ $opt -eq "2" ];then
	echo "login"
	read -p "Enter username " luser
	echo ""
	
		if [ -z "$luser" ];then
			echo "Please Enter username"
		else
			read -p "Enter password" -s lpasswd
			echo ""
			vdata=`grep "$luser" ./data.csv`
			
			if [ -z "$vdata" ];then
				echo "User not found!"
			else
				user=`grep "$luser" ./data.csv | cut -d ":" -f1`
				pass=`grep "$luser" ./data.csv | cut -d ":" -f2`
				#echo "$user $pass"
				if [ "$user" = "$luser" ];then
					if [ "$pass" = "$lpasswd" ];then
						echo "Login Done"
					else
						echo "wrong password"
					fi
				else
					echo "Invalid crenditial."
				fi
			fi

		fi

else
	echo "Please choose corect option."
fi
