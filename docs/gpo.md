# Group Policy Objects

## Password Policy
- Enforced in Default Domain Policy:
  - Minimum length = 12
  - Complexity = Enabled
  - Lockout after 3 attempts

## Login Banner
- GPO: "Login Banner Policy"
- Message shown at login:  
  "Welcome to Silverline Technologies. Unauthorized access is prohibited. All activity may be monitored."

## Drive Mapping
- GPO: "Map Shared Drive"
- Z: → \\FS01\Shared
- GPO: "Departmental Drive Mapping"
  - HR_Group → H:
  - IT_Group → I:
  - Finance_Group → F:
