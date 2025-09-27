# Domain Controller (DC01)

## Setup
- Installed **Active Directory Domain Services** and promoted DC01 as the domain controller
- Domain name: `silverline.local`
- Forward and reverse lookup zones created

## Organizational Units (OUs)
- Silverline Technologies
  - HR
  - IT
  - Finance
  - Users
  - Computers

## Users & Groups
- Users created manually and via bulk script
  - Example: alice.johnson (HR), bob.smith (IT), carol.davis (Finance)
- Groups created:
  - HR_Group
  - IT_Group
  - Finance_Group
- Users assigned to their department groups
