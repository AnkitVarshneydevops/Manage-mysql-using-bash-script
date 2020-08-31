#!/bin/bash
if[ $# -ne 1 ]
then
echo "Usage: $0 has user-name"
else
mysql -u $1 -Bse 'show databases'
fi
