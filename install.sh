#!/bin/bash

packagesToInstall="git zsh python vim task"

sudo apt-get install -y $packagesToInstall || sudo yum install -y $packagesToInstall

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp ./.zshrc ~/.zshrc

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

