# 🖥️ Active Directory Lab

This project simulates a small enterprise IT environment for **Silverline Technologies**, demonstrating practical IT skills in **Active Directory (AD)**, **File Server management**, **client domain integration**, and **Group Policy Objects (GPOs)**. It is designed to showcase skills relevant to entry-level IT Support / Systems Administrator positions.

---

## 🔧 Lab Components
- **Domain Controller (DC01)** → Windows Server 2019 (Active Directory Domain Services)
- **File Server (FS01)** → Windows Server 2019 (Shared folders with NTFS + Share permissions)
- **Clients (CLIENT1, CLIENT2)** → Windows 11 Pro (joined to domain)

---

## 🗂️ Features Demonstrated
- AD DS setup with users, groups, and organizational units (OUs)
- File Server shares with restricted group-based permissions
- Domain join process for Windows 11 clients
- Group Policy Objects (GPOs) for password policy, desktop settings, etc.
- PowerShell automation (bulk user creation from CSV)
- Troubleshooting case studies (password reset, access denied issues)

---


---

## 📸 Screenshots
Screenshots of setup and testing can be found in the [`/docs/screenshots`](docs/screenshots) folder:
- Domain Controller setup
- OU structure in ADUC
- File server share permissions
- Client domain join
- Applied GPOs

---

## ⚡ Automation
PowerShell script for bulk user creation is available in [`/scripts`](scripts).

---

## 📝 Case Studies
Example IT support tickets and resolutions are documented in [`/cases`](cases).
- Resetting a forgotten password
- Troubleshooting access denied to file shares

