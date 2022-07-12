#!/bin/sh
brew install gcc docker-compose python golang adr-tools tig nodejs node yarn 
brew install most bpytop duf jq yq gtop tldr fx bat duf dust
brew install curlie httpie procs cheat dog mcfly fd broot duf dust delta exa bat zoxide ripgrep 
# kind kubernetes-cli helm
brew update --force --quiet

mkdir -p ~/.docker/cli-plugins
ln -sfn /home/linuxbrew/.linuxbrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

curl -sfL https://raw.githubusercontent.com/alajmo/sake/main/install.sh | sh

wget https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
chmod +x prettyping
mv prettyping ~/bin/

cd $HOME/ansible-osx-setup/ansible_ubuntu
ansible-playbook -i "localhost," -c local 9th_python.yaml --ask-become-pass

