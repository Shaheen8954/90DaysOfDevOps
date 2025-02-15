#!/bin/bash


username="Devops_user1"

echo "creating user"

sudo useradd "$username"

cat /etc/passwd | grep "$username"


grpname="Devops_team1"

echo "creating group"

sudo groupadd "$grpname"

sudo gpasswd -M "$username"  "$grpname" 

echo "done"
echo "setting password"
 echo "$username:devops" | chpasswd

echo-e "$password\n$password" | sudo passwd "$username" 

echo "done"

