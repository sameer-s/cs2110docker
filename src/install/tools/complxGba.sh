#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install complx"
apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:tricksterguy87/complx
add-apt-repository ppa:tricksterguy87/nin10kit

apt-get update

apt-get install -y complx-tools nin10kit
apt-get install -y gcc-arm-none-eabi gdb-multiarch mednafen

# PDF viewer for documentation.
apt-get install -y evince

