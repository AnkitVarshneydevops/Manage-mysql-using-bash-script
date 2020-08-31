#!/bin/bash
if[ $# -ne 2 ]
then
echo "Usage: $0 has user-name and database-name"
else
mysql -u $1 -e 'Create database $2'
fi
