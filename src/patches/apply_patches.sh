#!/usr/bin/env bash

set -e
set -u

apt-get update
apt-get install -y patch
apt-get clean -y

# Don't exclude man pages
patch -u /etc/dpkg/dpkg.cfg.d/excludes -i $INST_SCRIPTS/patches/dont-exclude-man.patch

