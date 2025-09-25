# Lab Setup

## VirtualBox Network
- **Host-Only network**: `10.0.25.0/24`
- **Domain Controller (DC01)**: `10.0.25.10`
- **File Server (FS01)**: `10.0.25.20`
- **Clients (CLIENT1, CLIENT2)**: `10.0.25.101`, `10.0.25.102`
- **DNS**: All clients point to `10.0.25.10`

## VMs
- **DC01**: Windows Server 2019/2022  
- **FS01**: Windows Server 2019/2022  
- **CLIENT1/CLIENT2**: Windows 10/11  

## Networking Notes
- NAT adapters removed from clients/FS01 for stability  
- DC01 retains NAT for updates + Host-Only for domain traffic  
