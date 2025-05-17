# Network Security Lab Environment

This repository contains a Docker-based network security lab environment for educational purposes. It sets up two containers in an isolated network for practicing various network security concepts and tools.

## Environment Setup

The lab environment consists of:
- An attacker machine with security tools (Metasploit, Wireshark, nmap, etc.)
- A victim machine with the same base configuration
- An isolated network (10.10.10.0/24) for safe testing

### Container Details
- Attacker: 10.10.10.10
- Victim: 10.10.10.11

## Included Tools
- Wireshark
- tcpdump
- nmap
- netcat
- Metasploit Framework
- Python3 with Scapy
- Various networking utilities

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/dschrimpsher/cs465-565.git
   cd cs465-565
   ```

2. Build and start the containers:
   ```bash
   docker-compose up -d
   ```

3. Access the containers:
   ```bash
   # Access attacker
   docker exec -it attacker bash
   
   # Access victim
   docker exec -it victim bash
   ```

## Security Notice
This lab environment is for educational purposes only. The tools included should only be used in this isolated environment or on systems you have permission to test.

## Default Credentials
- Username: student
- Password: network2025
