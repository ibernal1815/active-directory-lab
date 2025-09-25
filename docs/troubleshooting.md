# Troubleshooting Notes

This file documents common issues encountered while setting up and testing the Silverline Technologies AD lab.  
Recruiters and IT managers can see my troubleshooting mindset and how I approach problem resolution.

---

## 🔹 Issue 1: Clients Could Not Ping Each Other
**Symptoms:**
- Ping between CLIENT1 and FS01 timed out
- ipconfig showed multiple adapters (NAT + Host-Only)

**Resolution:**
- Disabled NAT adapters on all clients and FS01
- Retained Host-Only adapter for internal domain traffic
- Confirmed connectivity with `ping 10.0.25.x`

---

## 🔹 Issue 2: nslookup Returned Wrong DNS (10.0.2.3)
**Symptoms:**
- nslookup showed DNS server as 10.0.2.3 instead of DC01 (10.0.25.10)
- Caused domain resolution errors

**Resolution:**
- Removed NAT adapters from clients
- Ensured DNS server statically set to 10.0.25.10
- Verified with `nslookup fs01.silverline.local`

---

## 🔹 Issue 3: Shared Folders Not Visible
**Symptoms:**
- `\\FS01\Shared` accessible via Run box, but not in Explorer
- Explorer Network did not list FS01

**Resolution:**
- Used GPO to map network drive (Z:) to `\\FS01\Shared`
- Enabled "Network Discovery" for smoother browsing
- Verified with screenshots of Z: drive

---

## 🔹 Issue 4: Login Banner / GPO Not Applying
**Symptoms:**
- Login banner did not appear for some users
- Drive mapping inconsistent

**Resolution:**
- Confirmed correct OU placement of user accounts
- Ran `gpupdate /force` on client machines
- Used `gpresult /r` to confirm GPOs were applied

---

## 🔹 Issue 5: User Forgot Password
**Symptoms:**
- Carol (Finance) could not log in to CLIENT2
- AD password expired/forgotten

**Resolution:**
- Reset password via ADUC
- Set temporary password `$silverline2025$`
- Forced "User must change password at next logon"

---

# Lessons Learned
- Always validate DNS and firewall rules first when connectivity fails
- NAT adapters in VirtualBox can cause conflicts; Host-Only is preferred for labs
- GPO changes require patience — refresh or reboot clients
- Documenting errors and fixes is as important as setting things up
