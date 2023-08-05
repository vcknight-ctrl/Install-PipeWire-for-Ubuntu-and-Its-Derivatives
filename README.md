# Install-PipeWire-for-Ubuntu-and-Its-Derivatives
This guide provides a convenient script and installation guide for setting up Pipewire on Ubuntu and its derivatives.

# Pipewire Installer Script

This script automates the installation process of pipewire on Ubuntu and its derivatives. The script installs Pipewire and its dependencies, sets up audio configurations, and optionally removes PulseAudio for a smooth transition.

## Requirements

- Ubuntu or Ubuntu-based distribution (tested on Ubuntu 22.04)
- Administrative privileges (sudo access) to install and configure packages

## Installation

To use the `curl` method to download the script from the provided GitHub link, using these steps:

1. Open a terminal on your Ubuntu-based system.

2. Download the script using `curl`:

```bash
curl -o pipewire-installer.sh https://raw.githubusercontent.com/vincent-chege/Install-PipeWire-for-Ubuntu-and-Its-Derivatives/main/pipewire-installer.sh
```

3. Make the script executable:

```bash
chmod +x pipewire-installer.sh
```

4. Run the script with administrative privileges:

```bash
sudo ./pipewire-installer.sh
```



