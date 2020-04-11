#! /bin/bash -x
shopt -s extglob

#Patterns for check valid email address
first_Email_Pattern="^[a-z0-9]{1,}$"

#Function to check valid email address
function emailValidation() {

	pattern=$2
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid, Email Address"
	else
		echo "Invalid, Email Address"
	fi
}
read -p "Enter the first part of email address: " email_Address
emailValidation $email_Address $first_Email_Pattern
