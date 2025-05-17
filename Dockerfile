FROM ubuntu:22.04@sha256:f9d633ff6640178c2d0525017174a688e2c1aef28f0a0130b26bd5554491f0da

# Set environment variable to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Pre-configure Wireshark for non-root users
RUN echo "wireshark-common wireshark-common/install-setuid boolean true" | debconf-set-selections

# Install common development tools and VS Code Server
RUN apt-get update && apt-get install -y \
    # System utilities
    sudo curl wget git \
    # Build essentials
    build-essential \
    # Python
    python3 python3-pip python3-venv \
    # Node.js
    nodejs npm \
    # Network tools
    wireshark tcpdump nmap netcat \
    iputils-ping iproute2 openssh-client iptables net-tools \
    # Additional utilities
    vim nano less tree gnupg2 \
    && curl -fsSL https://code-server.dev/install.sh | sh \
    # Install Metasploit
    && curl https://apt.metasploit.com/metasploit-framework.gpg.key | apt-key add - \
    && echo "deb https://apt.metasploit.com/ jessie main" > /etc/apt/sources.list.d/metasploit-framework.list \
    && apt-get update \
    && apt-get install -y metasploit-framework \
    # Python packages
    && pip3 install scapy jupyter jupyterlab \
    # Cleanup
    && rm -rf /var/lib/apt/lists/*

# Add a non-root user with sudo privileges
RUN useradd -ms /bin/bash student \
    && echo "student:network2025" | chpasswd \
    && adduser student sudo \
    && echo "student ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Configure VS Code Server
USER student
WORKDIR /home/student
RUN mkdir -p ~/.config/code-server \
    && echo "bind-addr: 0.0.0.0:8080\nauth: password\npassword: network2025\ncert: false" > ~/.config/code-server/config.yaml

# Create workspace directory
RUN mkdir -p ~/workspace

# Expose ports for VS Code Server and JupyterLab
EXPOSE 8080 8888

# Start VS Code Server
CMD ["code-server", "--host", "0.0.0.0", "--port", "8080", "--auth", "password"]