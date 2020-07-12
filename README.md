# Windex
 Widows bloatware cleaner for PowerShell


 This script run in PowerShell and will remove all program in the repo CSV.


 Please put the CSV file in the following location: C:\Users\[user_name]\Documents\microsoftbloat.csv


 You will also need to enable scripts to run in PowerShell.  To do so,
 please run PowerShell as an administrator and run the following command:  Set-ExecutionPolicy RemoteSigned

Next, you will need to make a slight adjustment to the script for it to run properly on you machine.  You will need to add your username to the file path.  
To do this, simply navigate to the location where the file is located: Open with > Notepad.  
Once the file is open in Notepad, find the find this string "if (Test-Path -Path C:\Users\squirrel\Documents)" at the top of the document.  Replace the name squirrel with YOUR login/username.  
You will need to do the same thing in this string: "$csv = Import-CSV -Path C:\Users\squirrel\Documents\microsoftbloat.csv"
After you have done so, click the "file" tab in the upper left hand corner, and select "save"

 To run the script, simply navigate to the location of the download and type .\remove_bloat.ps1.
 This script will need to be run in an Administrative PowerShell as well.

 If there are additional programs you would like to remove, you can add items to the CSV file.  Be sure to follow the
 format that is used.  Additionally, I will be updated the CSV file over time so that is contains an up-to-date list of apps that are naughty.

 Before runnning the script, it is encouraged that you look over the .csv file and understand what is going to be removed.  The default list will remove many of the porgrams that come stock with a new
 Windows 10 install.  




 **The CSV file, and the core function (the recursive removal), of the script are from the CyberSecurtiy boot camp at the University of Utah.  Huge thanks
 to the Teachers and TAs who devoted much of their time to teaching us how to be effective cyber warriors :) **
