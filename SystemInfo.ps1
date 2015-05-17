clear
Import-module ActiveDirectory
function GetData
{

$distName = 'OU=Desktops,OU=Plumstead Manor,OU=BSF Schools,DC=LBG,DC=LB,DC=SCH,DC=UK'
Get-ADComputer -Filter * -searchbase $distName -Property * | Select Name,OperatingSystem, LastLogondate | export-csv C:\PerfLogs\result.csv -nti

}

GetData 