#!/bin/sh
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/4th_zsh.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/5th_brew.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/6th_brew_env.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/7th_kubernetes.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/8th_nodejs.yaml --ask-become-pass
ansible-playbook -i "localhost," -c local ../ansible_ubuntu/9th_python.yaml --ask-become-pass