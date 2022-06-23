#!/bin/sh
brew install gcc docker-compose python golang adr-tools tig nodejs yarn 
brew install most bpytop duf jq yq gtop tldr fx bat duf dust
brew install curlie httpie procs cheat dog mcfly ripgrep fd broot duf dust delta exa bat zoxide ripgrep 
# kind kubernetes-cli helm
brew update --force --quiet

curl -sfL https://raw.githubusercontent.com/alajmo/sake/main/install.sh | sh

wget https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
chmod +x prettyping
mv prettyping ~/bin/

ansible-playbook -i "localhost," -c local 9th_python.yaml --ask-become-pass

