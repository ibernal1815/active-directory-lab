# Map drives based on AD group membership
# Run on client machines

$User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Everyone gets the shared drive
New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\FS01\Shared" -Persist

# Departmental drives
if ((whoami /groups) -match "HR_Group") {
    New-PSDrive -Name "H" -PSProvider FileSystem -Root "\\FS01\HR_Share" -Persist
}
if ((whoami /groups) -match "IT_Group") {
    New-PSDrive -Name "I" -PSProvider FileSystem -Root "\\FS01\IT_Share" -Persist
}
if ((whoami /groups) -match "Finance_Group") {
    New-PSDrive -Name "F" -PSProvider FileSystem -Root "\\FS01\Finance_Share" -Persist
}

Write-Host "Drives mapped for $User"