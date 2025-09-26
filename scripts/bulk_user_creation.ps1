# Bulk create AD users from a simple CSV
# CSV format: FirstName,LastName,Username,Department

param([string]$CsvPath = ".\users.csv")

Import-Module ActiveDirectory
$DefaultPassword = ConvertTo-SecureString '$silverline2025$' -AsPlainText -Force

$users = Import-Csv $CsvPath

foreach ($u in $users) {
    $ou = "OU=$($u.Department),OU=Silverline Technologies,DC=silverline,DC=local"
    $upn = "$($u.Username)@silverline.local"

    New-ADUser -Name "$($u.FirstName) $($u.LastName)" `
        -SamAccountName $u.Username `
        -UserPrincipalName $upn `
        -GivenName $u.FirstName `
        -Surname $u.LastName `
        -Path $ou `
        -AccountPassword $DefaultPassword `
        -Enabled $true

    Add-ADGroupMember -Identity "$($u.Department)_Group" -Members $u.Username
    Write-Host "Created user: $($u.Username) in $ou"
}