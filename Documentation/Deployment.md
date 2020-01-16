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

