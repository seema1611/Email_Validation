#! /bin/bash -x
shopt -s extglob

#Patterns for check valid email address
first_Email_Pattern="^[a-z0-9]{1,}$"
second_Email_Pattern="^[@]{1}[a-z0-9]{1,}$"
third_Email_Pattern="^[.]{1}[a-z]{2,4}([.]{1}[a-z]{2,4}+)?$"
four_Email_Pattern="^([.|_|+|-]?[a-z0-9]+)?$"

#Pattern of check hole email address
email_Pattern="^[a-z0-9]{1,}([.|_|+|-]?[a-z0-9]+)?[@]{1}[a-z0-9]{1,}[.]{1}[a-z]{2,4}([.]{1}[a-z]{2,4}+)?$"

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
read -p "Enter the email address: " email_Address
emailValidation $email_Address $email_Pattern

