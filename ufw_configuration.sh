# Check UFW status ufw_configuration.sh Script
#!/bin/bash

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install UFW
sudo apt install ufw -y

# Allow SSH
sudo ufw allow ssh

# Deny HTTP
sudo ufw deny http

# Enable UFW
sudo ufw enable

# Check UFW status
sudo ufw status verbose
