FROM dschrimpsher/cs465-base:latest

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