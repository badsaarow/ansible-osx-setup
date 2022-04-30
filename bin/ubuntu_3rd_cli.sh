#!/bin/sh
cd $HOME/ansible-osx-setup/ansible_ubuntu
ansible-playbook -i "localhost," -c local 4th_zsh.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 5th_brew.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 6th_brew_env.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 7th_kubernetes.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 8th_nodejs.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local 9th_python.yaml --ask-become-pass