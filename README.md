# Automate-mysql-database-using-bash-script
## Install mysql-5.7 on ubuntu
You can install mysql in ubuntu from [here](https://stackoverflow.com/questions/37806037/install-mysql-5-7-purely-from-bash-script-on-ubuntu/37916146).

**Creating a user account**

So far, you’ve seen how to connect to the MySQL server using the root administrator
account. This account has total control over all the MySQL server objects (much like how
the root Linux account has complete control over the Linux system).
It’s extremely dangerous to use the root MySQL account for normal applications. If there
were a breach of security and someone fi gured out the password for the root user account,
all sorts of bad things could happen to your system (and data).

To prevent that, it’s wise to create a separate user account in MySQL that has privileges
only for the database used in the application. You do this with the [bash script]().
**Logging into the server**

If you’ve created a special user account in MySQL for your shell scripts, you need to use it
to log in with the mysql command. There are a couple ways to do that. One method is to
include the password on the command line using the -p parameter:
 
   **mysql mytest -u test –p test**

This, however, is not a good idea. Anyone who has access to your script will know the user
account and password for your database.
To solve this problem, you can use a special configuration file used by the mysql program.
The mysql program uses the **$HOME/.my.cnf** file to read special startup commands and
settings. One of those settings is the default password for mysql sessions started by the
user account.
To set the default password in this file, just create the following:

**$ cat .my.cnf**

  **[client]**
  
  **password = test**
  
  **$ chmod 400 .my.cnf**

Bash Script for creating database
#!/bin/bash
mysql -u test -e 'Create database database-name'
