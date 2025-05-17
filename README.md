# Student Development Environment

This repository contains a Docker-based development environment for students, providing a consistent Ubuntu 22.04 workspace with all necessary tools pre-installed.

## Features

- Ubuntu 22.04 base system
- VS Code Server (accessible via web browser)
- JupyterLab for interactive Python notebooks
- Common development tools (git, build-essential, etc.)
- Network analysis tools (Wireshark, tcpdump, etc.)
- Python 3 with common packages
- Node.js and npm

## Getting Started

1. Install Docker and Docker Compose on your system
2. Clone this repository:
   ```bash
   git clone https://github.com/dschrimpsher/cs465-565.git
   cd cs465-565
   ```

3. Build and start the environment:
   ```bash
   docker-compose up -d
   ```

4. Access the development environment:
   - VS Code Server: http://localhost:8080 (password: network2025)
   - JupyterLab: http://localhost:8888

## Directory Structure

- `/workspace`: Your working directory (persisted on your local machine)
- `/home/student`: Home directory inside the container

## Default Credentials

- Username: student
- Password: network2025

## Available Tools

### Development Tools
- VS Code Server
- Git
- Python 3 with pip
- Node.js and npm
- Build essentials (gcc, make, etc.)

### Network Tools
- Wireshark
- tcpdump
- nmap
- netcat
- Metasploit Framework
- Scapy

## Support

If you encounter any issues, please:
1. Check the Docker logs: `docker-compose logs`
2. Ensure all ports (8080, 8888) are available on your system
3. Contact your instructor for additional help

## Note

This environment is designed for educational purposes and includes all necessary tools for your coursework. The container runs with privileged access to support networking tools.

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

# Clone and build the container
```bash
git clone https://github.com/dschrimpsher/network-security-lab.git
cd network-security-lab
docker build -t netseclab .
docker run -it --rm --privileged netseclab
```
