# Domain Controller (DC01)

## Setup
- Installed **Active Directory Domain Services** and promoted server to DC
- Domain name: `silverline.local`
- DNS zone created automatically
- Reverse lookup zone added for `10.0.25.0/24`

## Users and Groups
- OUs created:
  - Silverline Technologies
    - HR, IT, Finance, Users, Computers
- Security groups:
  - HR_Group, IT_Group, Finance_Group

## Bulk User Creation
- Added script `scripts/bulk_user_creation.ps1`
- Users imported from CSV into their department OUs
- Each user added to their department group
- Default password: `$silverline2025$`
