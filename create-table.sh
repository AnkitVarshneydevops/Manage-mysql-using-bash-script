#!/bin/bash
if[ $# -ne 2 ]
then
echo "Usage: $0 has user-name and database-name"
else
mysql -u $1 -e 'CREATE TABLE employees ( empid int not null,lastname varchar(30),firstname varchar(30),salary float,primary key (empid));' $2
fi
