Complicated Code Part 1: Registering multiple users with same first name and last name

Register.php in line 63
This is creating the email for the users and looking though the database for any similar copies.


Register.php in line 77
This part looks for multiple emails in the database that have components of the first and last name. 
If this is the case, it appends a number that is equal to the amount of results to the end of the email string to put in front of 
@betterflye.com

Welcome.php in line 7
This essentially looks to see if the user has ever been logged in during this session. If that is true, it will throw them to the landing page.

Welcome.php in line 347
This takes the user out of the mini module screen that pops up when they click out of the box. 

Donations.php starting at line 10
Fetches volunteer hours and donated money from the database, and then updates the values with the updated data once the form is submitted.
