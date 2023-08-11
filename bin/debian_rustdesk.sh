#!/bin/sh
apt -y install libxdo3
wget https://github.com/rustdesk/rustdesk/releases/download/1.1.9/rustdesk-1.1.9.deb
dpkg -i rustdesk-1.1.9.deb
rustdesk &
