#!/bin/bash

# Add the Pipewire PPA repository
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream

# Update the package list
sudo apt update

# Install Pipewire and related packages
sudo apt install -y pipewire libspa-0.2-bluetooth pipewire-audio-client-libraries

# Reload user-level systemd units
systemctl --user daemon-reload

# Disable and mask PulseAudio services
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio

# Enable Pipewire media session service
systemctl --user --now enable pipewire-media-session.service

echo "Pipewire installation completed. You may need to restart your session for changes to take effect."

# Check if Pipewire is working, and if not, try to restart it
if systemctl --user is-active --quiet pipewire; then
    echo "Pipewire is running."
else
    echo "Pipewire is not running. Trying to restart..."
    systemctl --user restart pipewire
fi

# Rollback steps (unmask PulseAudio)
echo "If you want to rollback to PulseAudio:"
echo "Run the following commands:"
echo "systemctl --user unmask pulseaudio"
echo "systemctl --user --now enable pulseaudio.service pulseaudio.socket"

