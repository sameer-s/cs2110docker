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

# GBA linker script
dpkg -i $INST_SCRIPTS/pkgs/cs2110-gba-linker-script_1.1.2-0ubuntu1~ppa1~bionic1_amd64.deb
rm $INST_SCRIPTS/pkgs/cs2110-gba-linker-script_1.1.2-0ubuntu1~ppa1~bionic1_amd64.deb

# PDF viewer for documentation.
apt-get install -y evince

