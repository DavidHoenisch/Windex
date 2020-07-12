echo "Welcome to MicroWindex"

if (Test-Path -Path C:\Users\squirrel\Documents)
{"found CSV, proceeding to remove specified applications"}
else
{"No CSV file found, please add one to the Documents folder!"}

Set-Location C:\
if (Test-Path -Path C:\Logs)
{"Found Log file Destination"}
else
{New-Item -Name "Logs" -ItemType "Directory"}

echo "Removing Bloatware"

echo "<===================================================>" >>  C:\Logs\MicroWindex.txt

Get-Date >> C:\Logs\MicroWindex.txt

$csv = Import-CSV -Path C:\Users\squirrel\Documents\microsoftbloat.csv

foreach ($line in $csv) {
	
	Get-AppxPackage $line.appxpkg | Remove-AppxPackage -Verbose >> C:\Logs\MicroWindex.txt

}

echo "Bloatware Removed "
Start-Sleep -Seconds 2
echo "You can find a log of all the application that were removed in the C:\Logs directory" 
Set-Location C:\Logs
ls