#!/bin/sh
cd $HOME/ansible-osx-setup/ansible_ubuntu
chsh -s /usr/bin/zsh `whoami`
ansible-playbook -i "localhost," -c local 4th_zsh.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 5th_brew.yaml --ask-become-pass
# 아래 shell에서 sudo 변환을 하기 때문에 shell에서 직접 해야 함
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zprofile
brew update --force --quiet
chmod -R go-w \"$(brew --prefix)/share/zsh\""

ansible-playbook -i "localhost," -c local 6th_brew_env.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 7th_kubernetes.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 8th_nodejs.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 9th_python.yaml --ask-become-pass