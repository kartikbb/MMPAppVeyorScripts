Import-Module WebAdministration
$iisAppPoolName = "MMPDevAppPool"
$iisAppPoolDotNetVersion = "v4.0"

#navigate to the app pools root
cd IIS:\AppPools\

#create the app pool
$appPool = New-Item $iisAppPoolName
$appPool | Set-ItemProperty -Name "managedRuntimeVersion" -Value   $iisAppPoolDotNetVersion 
$appPool | Set-ItemProperty -Name processModel -value @{identitytype="LocalSystem"}
