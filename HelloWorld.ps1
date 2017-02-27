$ErrorActionPreference = 'Stop’
$Password = $env:Password | ConvertTo-SecureString -AsPlainText -Force
$creddentials = New-Object System.Management.Automation.PSCredential -ArgumentList $env:UserName, $Password
Invoke-Command -ComputerName $env:Computer -Credential $credentials -ScriptBlock {
$strString = "Hello World"
write-host $strString
}
