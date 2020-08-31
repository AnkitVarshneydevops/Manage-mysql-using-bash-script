#!/bin/bash
USER=$1
PASSWD=$2
if [ $# -ne 2 ]
then
echo "Usage: create-user user-name and password"
else
echo "Creating $USER"
mysql -u root -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2'"
echo "Granting all permission to $USER"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$1'@'localhost'"
fi
