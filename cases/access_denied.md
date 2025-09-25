# Case Study: Access Denied

## Scenario
Alice Johnson (HR) reported that she could not open the Finance shared folder.

- User: SILVERLINE\alice.johnson (member of HR_Group)
- Attempted access: `\\FS01\Finance_Share`

## Observed Behavior
- Windows Explorer prompt returned: **"Access Denied"**
- No browsing rights inside Finance share

## Expected Outcome
- Alice is only allowed to access HR resources
- Departmental isolation is working as intended

## Validation Tests
- Bob Smith (IT) → Accessed `\\FS01\IT_Share` successfully
- Carol Davis (Finance) → Accessed `\\FS01\Finance_Share` successfully
- Cross-tests confirmed users cannot access other departments' shares

## Lessons Learned
- NTFS and Share permissions matched correctly with AD groups
- Security works best when aligned with OU + Group membership
