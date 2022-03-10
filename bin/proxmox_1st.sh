#!/bin/sh
true > /etc/apt/sources.list.d/pve-enterprise.list
apt -y update
apt -y upgrade
apt -y install sudo curl wget git zsh build-essential ca-certificates gnupg lsb-release python-is-python3 pip
pip install --ignore-installed ansible

git clone https://github.com/badsaarow/ansible-osx-setup.git
cd ansible-osx-setup || exit

ansible-galaxy install -r requirements.yml
pveam update
reboot
