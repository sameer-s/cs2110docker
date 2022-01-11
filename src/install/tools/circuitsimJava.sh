#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install circuitsim"
apt-get update && apt-get install -y xserver-xorg-video-dummy

# apt-get update && apt-get install -y openjdk-8-jre openjfx=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2

# Ubuntu removed openjfx=8u161-b12-1ubuntu2, so we have to install this directly
# from a .deb now
# OpenJDK + JFX (https://www.azul.com/downloads/zulu-community/)

#apt-get install -y java-common libgl1-mesa-glx
#wget -P $INST_SCRIPTS/pkgs https://cdn.azul.com/zulu/bin/zulu11.48.21-ca-fx-jdk11.0.11-linux_amd64.deb
#dpkg -i $INST_SCRIPTS/pkgs/zulu11.48.21-ca-fx-jdk11.0.11-linux_amd64.deb
#rm $INST_SCRIPTS/pkgs/zulu11.48.21-ca-fx-jdk11.0.11-linux_amd64.deb

apt-get install -y libgl1-mesa-glx openjdk-17-jdk openjfx
