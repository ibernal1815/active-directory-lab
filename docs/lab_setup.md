# Lab Setup

This lab was built on a personal workstation using VirtualBox with multiple Windows Server and Windows 10/11 clients.

---

## 🔹 Host PC Specifications
- **CPU:** Intel 10-core / 16-thread processor
- **RAM:** 48 GB DDR4
- **Storage:** 2 TB HDD (lab VMs stored here)
- **OS:** Windows 11 Pro (host)
- **Virtualization:** Oracle VirtualBox

> ⚠️ Note: While the CPU and RAM are strong, using an HDD made VM performance slower compared to SSD storage.  
> To optimize, I increased VM RAM allocation and disabled unnecessary virtual devices (e.g., floppy).

---

## 🔹 Virtual Network Configuration
- **Host-Only Network:** `10.0.25.0/24`
- **DNS Server:** 10.0.25.10 (DC01)
- **Gateway (future RRAS setup):** 10.0.25.10

### Assigned Static IPs
- **DC01 (Domain Controller):** 10.0.25.10
- **FS01 (File Server):** 10.0.25.20
- **CLIENT1:** 10.0.25.101
- **CLIENT2:** 10.0.25.102

---

## 🔹 VM Configurations
### DC01 (Domain Controller)
- OS: Windows Server 2019/2022
- RAM: 6 GB
- vCPUs: 2
- Roles: Active Directory, DNS, (future: RRAS)
- Network: Host-Only + NAT (for updates)

### FS01 (File Server)
- OS: Windows Server 2019/2022
- RAM: 6 GB
- vCPUs: 2
- Roles: File Server
- Network: Host-Only only

### CLIENT1 & CLIENT2
- OS: Windows 11 Pro
- RAM: 8 GB each
- vCPUs: 4
- Network: Host-Only only

---

## 🔹 Setup Notes
- Removed NAT adapters on clients/FS01 to avoid DNS leakage (10.0.2.3 issues)
- DC01 retains NAT adapter only for Windows Updates and internet access
- Boot order configured: Hard disk first, CD second, Floppy disabled
- Performance improved after allocating more RAM to clients and servers

---
