#!/bin/bash
DBNAME=`mysql -u root -Bse 'show databases' | grep mytest`
echo "Taking Backup of $DBNAME"
mysqldump -u root $DBNAME > /tmp/$DBNAME.dump
