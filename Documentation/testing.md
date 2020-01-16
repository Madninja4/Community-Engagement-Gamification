To set up the testing environment for Betterflye:

Go to File->Settings
In settings, go to Languages & Frameworks->PHP->Test Frameworks
Click plus button
Click Local PHPUnit
Select the radio button next to Path to phpunit.phar
In the Path to phpunit.phar type "~\PhpstormProjects\betterflye\phpunit-7.5.20.phar" replacing the ~ with the path to the PhpstormProjects folder
Click OK

To create a testing configuration:

Go to Run->Edit Configurations
Set the Name -> "Local Unit Tests"
Set the Test Scope to "Directory"
Set the Directory to "~\PhpstormProjects\betterflye\test" replacing the ~ with the path to the PhpstormProjects folder
Click OK

Right-click test folder -> Run Local Unit Tests


Possible Issue:

error: "PDOException : SQLSTATE[HY000] [2002] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond."

Meaning: Database isn't reachable.