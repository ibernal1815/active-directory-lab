# File Server (FS01# File Server (FS01)

## Shared Folders
- `\\FS01\Shared` → accessible by all users
- `\\FS01\HR_Share` → HR_Group
- `\\FS01\IT_Share` → IT_Group
- `\\FS01\Finance_Share` → Finance_Group

## Permissions
- NTFS and Share permissions aligned with AD groups
  - Example: HR_Share → Modify for HR_Group only

## Testing
- HR user Alice → Access HR_Share (success), denied Finance_Share
- IT user Bob → Access IT_Share (success), denied HR_Share
- Finance user Carol → Access Finance_Share (success)
