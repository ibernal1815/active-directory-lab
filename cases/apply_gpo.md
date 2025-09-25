# Case Study: Group Policy Application

## Scenario
IT tested the deployment of multiple GPOs to ensure policy consistency across clients.

## Policies Tested
1. **Password Policy**
   - Minimum length = 12
   - Complexity enabled
   - Lockout threshold = 3 invalid attempts

2. **Login Banner**
   - Title: "Silverline Technologies Security Notice"
   - Message: "Unauthorized access is prohibited. All activity may be monitored."

3. **Drive Mapping**
   - Z: mapped to `\\FS01\Shared`
   - H:/I:/F: mapped to departmental shares via Item-Level Targeting

## Test Results
- Alice (HR):
  - Banner displayed at login
  - Password "password123" rejected, "Silverline!2025" accepted
  - H: drive mapped automatically, access to HR_Share granted
- Bob (IT):
  - Banner displayed at login
  - Password complexity enforced
  - I: drive mapped automatically, access to IT_Share granted
- Carol (Finance):
  - Banner displayed
  - F: drive mapped automatically, access to Finance_Share granted

## Lessons Learned
- Group Policies applied consistently after `gpupdate /force`
- Item-Level Targeting ensured the correct drive mapping for each department
- Documentation + screenshots provide clear recruiter-ready proof
