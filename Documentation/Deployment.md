###Server:
System has been designed to be server independent, will work on any server operating system – linux, windows, etc. This is because the team does not know the target server system. All we know is AWS
###File structure:
The system will need to be located where the web server (apache, nginx, ISS) can access and display
###Start/Stop:
To start the service, the sysadmin will need ensure that the web server, PHP, and the database software are running. To access the site, the users will access the web server’s IP or domain name.
To stop it from running, the web server should be disabled (linux Debian and derivatives: systemctl stop apache2, etc.) PHP and the database software should not be disabled.
###Troubleshooting
If issues arise, the first step should be to turn on error reporting in PHP’s configuration file or the particular page with issues, following PHP official documentation  - https://www.php.net/manual/en/function.error-reporting.php
The system is built so that any errors, in any other part of the system, will be reported through PHP.

###Our deployment for public server
####Requirements -- Linux server

This guide uses Debian-based commands, replace them as needed for other distributions.
It is advised to run all commands from an elevated shell -- as root or with sudo

* install required software -> "apt install ufw git apache2 mariadb-server php7.3*"

* navigate to html folder -> "cd /var/www/html"

* clone the betterflye directory -> "git clone https://github.com/tms326/betterflye"

* allow web traffic through the firewall -> "ufw enable && ufw allow 80 && ufw allow 443"

* edit the apache config file to redirect traffic to the betterflye folder -> "nano /etc/apache2/sites-available/000-default.conf"

* set the DocumentRoot line to say -> "DocumentRoot /var/www/html/betterflye"
* save the file and exit -> ctrl o + ctrl x

###set up the database:

* run the command "mysql_secure_installation"
* answer the questions to match environment configurations

* login in to the mariadb instance -> "mysql -u root -p"
* create a global user for the db -> "create user 'root'@'%' identified by 'password';"
* create the betterflye database -> "create database betterflye'
* exit mysql -> "exit"

* redirect the betterfly sql file into the mysql instance -> "mysql -u root -p betterflye < '/var/www/html/betterflye/sql files/betterflye_tim.sql'"

* log back into the database
* grant the root user the proper privileges -> "grant all privileges on betterflye.* to 'root'@'%';"
* flush priviliges -> "flush privileges;"

