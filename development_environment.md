# Course Development Environment Setup

This course uses a Docker-based development environment to ensure all students have access to the same tools and configurations. This environment includes all necessary security tools, development software, and network analysis utilities.

## Prerequisites

1. Install Docker Desktop for your operating system:
   - [Windows](https://docs.docker.com/desktop/install/windows-install/)
   - [macOS](https://docs.docker.com/desktop/install/mac-install/)
   - [Linux](https://docs.docker.com/desktop/install/linux-install/)

2. Install Docker Compose (included with Docker Desktop for Windows and macOS):
   - [Linux Installation Guide](https://docs.docker.com/compose/install/linux/)

## Setting Up Your Environment

1. Clone the course repository:
   ```bash
   git clone https://github.com/dschrimpsher/cs465-565.git
   cd cs465-565
   ```

2. Build and start the environment:
   ```bash
   docker-compose up -d
   ```

## Accessing Your Development Environment

### VS Code in Browser
- URL: http://localhost:8080
- Password: network2025
- Features:
  - Full VS Code IDE experience
  - Integrated terminal
  - Access to all course tools
  - Git integration
  - Extensions support

### JupyterLab (for Python notebooks)
- URL: http://localhost:8888

## Available Tools

Your development environment includes:

### Network Security Tools
- Wireshark: Network protocol analyzer
- Metasploit Framework: Penetration testing framework
- nmap: Network scanning tool
- tcpdump: Packet analyzer
- Scapy: Packet manipulation tool

### Development Tools
- Python 3 with common security packages
- Node.js and npm
- Git version control
- Build essentials (gcc, make, etc.)

## Working with the Environment

### Workspace Directory
- The `/workspace` directory in VS Code is synchronized with your local machine
- All your work should be saved in this directory
- Files persist even if you restart the container

### Best Practices
1. Always save your work in the `/workspace` directory
2. Use VS Code's integrated terminal for command-line operations
3. Keep the container running while working on assignments
4. Commit your work regularly to Git

### Accessing from Other Devices
You can access your development environment from any device on your local network:
1. Find your computer's IP address
2. Access VS Code at `http://<your-ip>:8080`
3. Access JupyterLab at `http://<your-ip>:8888`

## Troubleshooting

If you encounter issues:

1. Check if containers are running:
   ```bash
   docker-compose ps
   ```

2. View container logs:
   ```bash
   docker-compose logs
   ```

3. Restart the environment:
   ```bash
   docker-compose down
   docker-compose up -d
   ```

4. Ensure ports 8080 and 8888 are not in use by other applications

## Security Notice

This environment includes powerful security testing tools. These tools should only be used:
- Within this controlled environment
- On systems you have permission to test
- For educational purposes as directed by course materials

## Getting Help

If you encounter problems:
1. Check the Docker logs for error messages
2. Ensure all prerequisites are properly installed
3. Contact the course instructor or TAs during office hours
4. Post in the course discussion forum (excluding any sensitive information) 