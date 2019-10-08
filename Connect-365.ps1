#Connect to Office 365
#Requires MSOnline module to be installed - install with Install-Module MSOnline

$cred = Get-Credential
Connect-msolservice -Credential $cred
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $Cred -Authentication Basic -AllowRedirection
Import-PSSession $Session
