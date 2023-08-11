#!/bin/bash

# Add Pipewire repository
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream

# Update package lists
sudo apt update

# Install required packages
sudo apt install -y pipewire libldacbt-{abr,enc}2 libspa-0.2-bluetooth pipewire-audio-client-libraries wireplumber pipewire-pulse

# Remove PulseAudio (optional)
#sudo apt remove -y pulseaudio

# Config Files
sudo cp /usr/share/doc/pipewire/examples/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d/

# Disable and mask PulseAudio services
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio

# Enable and start Pipewire and WirePlumber services
systemctl --user --now enable pipewire pipewire-pulse wireplumber
systemctl --user --now enable wireplumber.service

echo "Installation and configuration completed."
