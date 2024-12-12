#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function to print banners
print_banner() {
  echo -e "${CYAN}"
  echo "##############################################"
  echo "#                                            #"
  echo "#            O X S V C O N Installer        #"
  echo "#                                            #"
  echo "##############################################"
  echo -e "${RESET}"
}

print_status() {
  echo -e "${BLUE}[*] $1${RESET}"
}

print_success() {
  echo -e "${GREEN}[+] $1${RESET}"
}

print_error() {
  echo -e "${RED}[-] $1${RESET}"
}

print_warning() {
  echo -e "${YELLOW}[!] $1${RESET}"
}

# Display banner
print_banner

# Update and upgrade system
print_status "Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y && print_success "System updated and upgraded." || print_error "Failed to update/upgrade system."

# Install Snap
print_status "Installing Snap package manager..."
sudo apt install -y snapd && print_success "Snap installed successfully." || print_error "Failed to install Snap."

# Install Go
print_status "Installing Go (Golang)..."
sudo snap install go --classic && print_success "Go installed successfully." || print_error "Failed to install Go."

# Install Subfinder and Httpx
print_status "Installing Subfinder and Httpx..."
export PATH="$PATH:$(go env GOPATH)/bin"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest && print_success "Httpx installed successfully." || print_error "Failed to install Httpx."
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest && print_success "Subfinder installed successfully." || print_error "Failed to install Subfinder."

# Install Docker
print_status "Installing Docker..."
sudo snap install docker && print_success "Docker installed successfully." || print_error "Failed to install Docker."

# Pull and run Acunetix Docker image
print_status "Pulling Acunetix Docker image..."
docker pull secfa/docker-awvs && print_success "Acunetix Docker image pulled successfully." || print_error "Failed to pull Acunetix Docker image."

print_status "Running Acunetix Docker container..."
docker run -it -d -p 13424:3443 --cap-add LINUX_IMMUTABLE secfa/docker-awvs && \
print_success "Acunetix Docker container is running on https://<your-ip>:13424" || \
print_error "Failed to run Acunetix Docker container."

# Install Python3-pip
print_status "Installing Python3-pip..."
sudo apt install -y python3-pip && print_success "Python3-pip installed successfully." || print_error "Failed to install Python3-pip."

# Install sqlmap
print_status "Installing sqlmap..."
pip install sqlmap && print_success "sqlmap installed successfully." || print_error "Failed to install sqlmap."

# Final message
print_success "All tasks completed!"
echo -e "${CYAN}Use the tools responsibly. Happy Hacking!${RESET}"

