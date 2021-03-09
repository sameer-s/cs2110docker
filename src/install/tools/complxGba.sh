#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install complx"
apt-get update
apt-get install --no-install-recommends -y software-properties-common
add-apt-repository ppa:tricksterguy87/complx
add-apt-repository ppa:tricksterguy87/nin10kit

apt-get update

apt-get install --no-install-recommends -y complx-tools nin10kit
apt-get install --no-install-recommends -y gcc-arm-none-eabi libnewlib-arm-none-eabi gdb-multiarch mednafen
rm -rf /usr/lib/arm-none-eabi/newlib/thumb

# GBA linker script
dpkg -i $INST_SCRIPTS/pkgs/cs2110-gba-linker-script_1.1.2-0ubuntu1~ppa1~bionic1_amd64.deb
rm $INST_SCRIPTS/pkgs/cs2110-gba-linker-script_1.1.2-0ubuntu1~ppa1~bionic1_amd64.deb

# PDF viewer for documentation.
apt-get install --no-install-recommends -y evince

apt-get clean -y

