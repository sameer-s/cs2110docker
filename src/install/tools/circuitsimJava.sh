#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install circuitsim"
apt-get update && apt-get install --no-install-recommends -y xserver-xorg-video-dummy

# Ubuntu removed openjfx=8u161-b12-1ubuntu2, so we have to install this directly
# from a .deb now
# OpenJDK + JFX (https://www.azul.com/downloads/zulu-community/)

apt-get install --no-install-recommends -y java-common libgl1-mesa-glx libxtst6
wget -qP $INST_SCRIPTS/pkgs https://cdn.azul.com/zulu/bin/zulu8.52.0.23-ca-fx-jdk8.0.282-linux_amd64.deb
dpkg -i $INST_SCRIPTS/pkgs/zulu8.52.0.23-ca-fx-jdk8.0.282-linux_amd64.deb
rm $INST_SCRIPTS/pkgs/zulu8.52.0.23-ca-fx-jdk8.0.282-linux_amd64.deb

