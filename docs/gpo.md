# Group Policy Objects (Phase 3)

## Password Policy
- Applied via Default Domain Policy
- Settings:
  - Minimum password length = 8
  - Complexity = Enabled
  - Lockout threshold = 3 invalid attempts

## Login Banner
- Custom GPO created
- Title: "Silverline Technologies Security Notice"
- Message: "Unauthorized access is prohibited. All activity may be monitored."

## Drive Mapping
- GPO: Map Shared Drive
  - Z: → \\FS01\Shared
- GPO: Departmental Drive Mapping (Item-Level Targeting)
  - HR_Group → H: → \\FS01\HR_Share
  - IT_Group → I: → \\FS01\IT_Share
  - Finance_Group → F: → \\FS01\Finance_Share
