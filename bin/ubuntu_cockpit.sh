#!/bin/sh
. /etc/os-release
sudo apt install -t ${VERSION_CODENAME}-backports cockpit
