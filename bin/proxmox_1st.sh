#!/bin/sh
true > /etc/apt/sources.list.d/pve-enterprise.list
apt -y update
apt -y upgrade
apt -y install sudo curl wget git zsh build-essential ca-certificates gnupg lsb-release python-is-python3 pip net-tools ifupdown2 network-manager
pip install --ignore-installed ansible

git clone https://github.com/badsaarow/ansible-osx-setup.git
cd ansible-osx-setup || exit

ansible-galaxy install -r requirements.yml
echo "source /etc/network/interfaces.d/*" | tee >> /etc/network/interfaces
echo "\n" > /etc/apt/source3s.list.d/pve-enterprise.list 
pveam update
pveam available
curl -fsSL https://tailscale.com/install.sh | sh
reboot
