#!/usr/bin/env bash
set -e

echo "Install VNC server"
#if [[ $(dpkg --print-architecture) == "arm64" ]]; then
#	wget -P $INST_SCRIPTS/pkgs https://iweb.dl.sourceforge.net/project/tigervnc/stable/1.12.0/ubuntu-20.04LTS/arm64/tigervncserver_1.12.0-1ubuntu1_arm64.deb
#	apt install -y $INST_SCRIPTS/pkgs/tigervncserver_1.12.0-1ubuntu1_arm64.deb
#	rm $INST_SCRIPTS/pkgs/tigervncserver_1.12.0-1ubuntu1_arm64.deb
#else
#	wget -qO- https://sourceforge.net/projects/tigervnc/files/stable/1.8.0/tigervnc-1.8.0.x86_64.tar.gz/download | tar xz --strip 1 -C /
#fi
apt install -y tightvncserver
