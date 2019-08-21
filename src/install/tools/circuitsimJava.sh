#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install circuitsim"
apt-get update && apt-get install -y openjdk-8-jre xserver-xorg-video-dummy openjfx=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2
