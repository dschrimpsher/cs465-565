FROM ubuntu:22.04@sha256:f9d633ff6640178c2d0525017174a688e2c1aef28f0a0130b26bd5554491f0da


RUN apt-get update && apt-get install -y \
    sudo wireshark tcpdump nmap netcat \
    iputils-ping iproute2 curl git python3 python3-pip \
    openssh-client iptables net-tools gnupg2 \
    && curl https://apt.metasploit.com/metasploit-framework.gpg.key | apt-key add - \
    && echo "deb https://apt.metasploit.com/ jessie main" > /etc/apt/sources.list.d/metasploit-framework.list \
    && apt-get update \
    && apt-get install -y metasploit-framework \
    && pip3 install scapy \
    && rm -rf /var/lib/apt/lists/*


# Add a non-root user
RUN useradd -ms /bin/bash student && echo "student:network2025" | chpasswd && adduser student sudo


USER student
WORKDIR /home/student
CMD ["/bin/bash"]