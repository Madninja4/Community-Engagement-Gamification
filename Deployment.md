Server:
  System has been designed to be server independent, will work on any server operating system – linux, windows, etc. This is because the team does not know the target server system. All we know is AWS

File structure:
  The system will need to be located where the web server (apache, nginx, ISS) can access and display
  
Start/Stop:
  To start the service, the sysadmin will need ensure that the web server, PHP, and the database software are running. To access the site, the users will access the web server’s IP or domain name.
  To stop it from running, the web server should be disabled (linux Debian and derivatives: systemctl stop apache2, etc.) PHP and the database software should not be disabled.

Troubleshooting
  If issues arise, the first step should be to turn on error reporting in the PHP configuration file or the particular page with issues, following PHP official documentation  - https://www.php.net/manual/en/function.error-reporting.php
  The system is built so that any errors, in any other part of the system, will be reported through PHP.
