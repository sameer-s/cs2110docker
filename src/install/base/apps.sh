#!/usr/bin/env bash

set -euo pipefail

apt-get update

# PDF viewer (for Complx documentation in particular)
apt-get install -y evince

apt-get clean -y

