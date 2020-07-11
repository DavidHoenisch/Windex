$csv = Import-CSV -Path C:\Users\squirrel\Documents\microsoftbloat.csv

foreach ($line in $csv) {
	
	Get-AppxPackage $line.appxpkg | Remove-AppxPackage -Verbose

}
