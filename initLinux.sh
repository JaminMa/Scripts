#!/bin/bash

curl -L https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.bashrc >> ~/.bashrc

rm -rf ~/.gitconfig && curl -Lo ~/.gitconfig https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.gitconfig

rm -rf .vimrc && curl -Lo ~/.vimrc https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.vimrc

rm -rf .nvm && curl -L https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

rm -rf ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -Lo ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

mkdir -p ~/.vim/colors && curl -Lo ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim

