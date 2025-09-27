# Clients (CLIENT1, CLIENT2)

## Setup
- Joined both clients to domain: `silverline.local`
- DNS manually pointed to 10.0.25.10 (DC01)

## Testing
- Users can log in with their domain accounts
- Group Policy Objects applied successfully:
  - Login banner shown at login
  - Password policy enforced
  - Departmental drives mapped (H:/I:/F:) plus shared drive Z:
