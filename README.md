# 🖥️ Active Directory Lab

This project simulates a small enterprise IT environment for **Silverline Technologies**, demonstrating practical IT skills in **Active Directory (AD)**, **File Server management**, **client domain integration**, and **Group Policy Objects (GPOs)**. It is designed to showcase skills relevant to entry-level IT Support / Systems Administrator positions.

---

## 🔧 Lab Components
- **Domain Controller (DC01)** → Windows Server 2019 (Active Directory Domain Services)
- **File Server (FS01)** → Windows Server 2019 (Shared folders with NTFS + Share permissions)
- **Clients (CLIENT1, CLIENT2)** → Windows 11 Pro (joined to domain)

---

## 🗂️ Features Demonstrated
- Active Directory domain setup: `silverline.local` (although, in this case, you can make it whatever you want your fake enterprise to be)
- Organizational Units (OUs) for HR, Finance, and IT departments
- User and group management with role-based access
- File Server shares with NTFS + Share permissions
- Domain join process for Windows 11 clients
- Group Policy Objects (password complexity, folder redirection, desktop restrictions)
- PowerShell automation (bulk user creation from CSV)
- Troubleshooting case studies (e.g., password resets, access denied to shares)

---

## 📊 Network Diagram
```mermaid
graph TD
    DC01[DC01 - Domain Controller<br/>silverline.local]
    FS01[FS01 - File Server<br/>Dept Shares (HR, Finance, IT)]
    CLIENT1[CLIENT1 - Windows 11 Pro]
    CLIENT2[CLIENT2 - Windows 11 Pro]

    CLIENT1 --> DC01;
    CLIENT2 --> DC01;
    CLIENT1 --> FS01;
    CLIENT2 --> FS01;
    FS01 --> DC01;
```
---

## 📸 Screenshots
Screenshots of setup and testing are stored in [`/docs/screenshots`](docs/screenshots):
- Domain Controller setup
- OU structure in ADUC
- File share permissions
- Client domain join
- GPOs applied on clients

---

## ⚡ Automation
- PowerShell scripts in [`/scripts`](scripts) demonstrate automation:
  - Bulk user creation
  - Network drive mapping

---

## 📝 Case Studies
Example IT support tickets for Silverline Technologies are documented in [`/cases`](cases):
- Resetting a forgotten password
- Troubleshooting access denied issues
- Applying Group Policies for compliance

