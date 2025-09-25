# Case Study: Password Reset

## Scenario
End user Carol Davis (Finance) contacted IT because she forgot her password and could not log into CLIENT2.

## Resolution Steps
1. On DC01, IT admin opened **Active Directory Users and Computers (ADUC)**
2. Navigated to: Silverline Technologies -> Finance -> carol.davis
3. Right-click user → **Reset Password**
4. Set temporary password: `$silverline2025$`
5. Checked:
- "User must change password at next logon"

## Verification
- Carol logged into CLIENT2 with the temporary password
- Prompted to create a new password
- New password applied successfully
- Access to Finance_Share restored

## Lessons Learned
- Password resets are one of the most common helpdesk tickets
- Demonstrates ability to use ADUC to resolve user issues quickly
- Case documentation reinforces IT support readiness
