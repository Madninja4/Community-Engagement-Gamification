# Development Environment Manual

## BACKEND & FRONTEND (for dashboard & API)

### Install Prerequisites

*   Install XAMPP (v7.3.11 is tested)
    *   <a href="https://www.apachefriends.org/download.html" target="_blank">https://www.apachefriends.org/download.html</a>
    *   Run the apache and mysql by running **xampp-control.exe** (or corresponding executable if you are in MAC).

### Create DB Tables

*   Browse to <a href="http://localhost/phpMyAdmin/" target="_blank">http://localhost/phpMyAdmin/</a>
    *   Default username should be **root** without a password if asked.
*   Create a database by using the new button on top-left.
    *   Database name: **betterflye**
    *   Leave everything else same and click **create**.
*   Click on the new **betterflye** and select **SQL** tab.
*   Copy the contents of this sql file.
    *   <a href="https://github.com/tms326/Betterflye/blob/master/sql%20files/betterflye_tim.sql" target="_blank">https://github.com/tms326/Betterflye/blob/master/sql%20files/betterflye_tim.sql</a>
*   Paste it into the textbox in **SQL** tab and click **GO** button on bottom-right.

### Clone Repositories

*   Browse to **C:/xampp/htdocs** folder. (find the relevant folder under xampp installation in MAC)
*   Clone the repositorie in that folder.
    *  <a href="https://github.com/tms326/Betterflye.git" target="_blank">https://github.com/tms326/Betterflye.git</a>
*   You can do it via command line (or choose your own way of cloning a repository, NOT DOWNLOADING).  

    *   **Shift+Right-click** to an empty place on that folder to open a command line.
    *   Run these commands (it assumes you have **git** installed and **git** command accessible in PATH environment variable):
        *   <pre>git clone https://github.com/tms326/Betterflye.git</pre>



### Test the Development Environment

*   Simply browse to <a href="http://localhost/Betterflye" target="_blank">http://localhost/Betterflye</a>
*   Create user.

### Testing environment for Betterflye:

*   Go to File->Settings
*   In settings, go to Languages & Frameworks->PHP->Test Frameworks
*   Click plus button
*   Click Local PHPUnit
*   Select the radio button next to Path to phpunit.phar
*   In the Path to phpunit.phar type "~\PhpstormProjects\betterflye\phpunit-7.5.20.phar" replacing the ~ with the path to the PhpstormProjects folder
*   Click OK

### Create a testing configuration:

*   Go to Run->Edit Configurations
*   Set the Name -> "Local Unit Tests"
*   Set the Test Scope to "Directory"
*   Set the Directory to "~\PhpstormProjects\betterflye\test" replacing the ~ with the path to the PhpstormProjects folder
*   Click OK

*   Right-click test folder -> Run Local Unit Tests


### Possible Issue:

*   error: "PDOException : SQLSTATE[HY000] [2002] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."

*   Meaning: Database isn't reachable.
