#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install gcc/gdb"
apt-get update
apt-get install --no-install-recommends -y gcc gdb build-essential libc6-i386 pkg-config check valgrind
apt-get clean -y

