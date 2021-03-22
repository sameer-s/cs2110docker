#!/bin/bash

# Temporary fixups applied after every other step so that users pulling the
# container won't waste too much space. After every semester, these should be
# reinserted in the appropriate place.

# Fix 'man' in minimal Ubuntu. This should be moved back into
# install/base/man_pages.sh

# Reinstall packages with manpages
apt-get update
apt-get install --reinstall -y man-db manpages manpages-dev manpages-posix
apt-get install --reinstall -y gdb

# Reinstall all packages missing their manpages
#dpkg -S /usr/share/man/ | sed 's|, |\n|g;s|: [^:]*$||' | DEBIAN_FRONTEND=noninteractive xargs apt-get install --reinstall -y

# Ubuntu minimal diverts /usr/bin/man to a shell script; restore the real man
rm -f /usr/bin/man
dpkg-divert --quiet --remove --rename /usr/bin/man

# Get a better pager
apt-get install -y less

