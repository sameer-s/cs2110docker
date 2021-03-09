#!/usr/bin/env bash

set -e

echo "Install POSIX man pages"
apt-get update
apt-get install --no-install-recommends -y man manpages-posix
apt-get clean -y

