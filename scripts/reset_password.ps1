# Reset a user's password in Active Directory
# Usage: .\reset_password.ps1 username newpassword

param(
    [string]$User,
    [string]$NewPassword
)

Import-Module ActiveDirectory

Set-ADAccountPassword -Identity $User -NewPassword (ConvertTo-SecureString $NewPassword -AsPlainText -Force) -Reset
Unlock-ADAccount -Identity $User
Set-ADUser -Identity $User -ChangePasswordAtLogon $true

Write-Host "Password for $User has been reset."