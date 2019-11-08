#! /bin/bash
# username.sh
# Finn White
echo "Enter a username: "
echo "(Username must be 3-12 characters and only use lower case letters, digits, and '_' AND must start with a lower case letter)"
read username
while echo "$username" | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - (a-z), (0-9), (_), 3-12 characters, lowercase first character!"
	echo "Enter a valid username: "
	read username
done
echo "Thank you"
