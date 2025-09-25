# File Server (FS01)

## Shared Folders
- `\\FS01\Shared` → General access
- `\\FS01\HR_Share` → HR_Group
- `\\FS01\IT_Share` → IT_Group
- `\\FS01\Finance_Share` → Finance_Group

## Permissions
- NTFS + Share permissions aligned with department groups
- Example:
  - HR_Share: Modify for HR_Group
  - Finance_Share: Modify for Finance_Group

## Testing
- Alice (HR) → can access HR_Share, denied Finance_Share
- Bob (IT) → can access IT_Share
- Carol (Finance) → can access Finance_Share
