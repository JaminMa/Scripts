#!/bin/bash

# .bashrc
echo Creating/appending .bashrc

sed -i '/# BEGIN OF https:\/\/raw.githubusercontent.com\/JaminMa\/ConfigsForNewTerminals\/master\/.bashrc/,/# END OF https:\/\/raw.githubusercontent.com\/JaminMa\/ConfigsForNewTerminals\/master\/.bashrc/d' ~/.bashrc

curl -LSs https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.bashrc >> ~/.bashrc

# ------

# NVM

echo Installing Node Version Manager

curl -LSs https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash > /dev/null

# ------

# VIM

echo Configuring VIM and installing Pathogen, Syntastic, and Monokai color theme

rm -rf ~/.vimrc && curl -LSs https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.vimrc > ~/.vimrc

rm -rf ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && git clone --quiet --depth=1 https://github.com/vim-syntastic/syntastic.git > /dev/null

mkdir -p ~/.vim/colors && curl -LSso ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim

# ------

# Git

echo Configuring Git

rm -rf ~/.gitconfig && curl -LSs https://raw.githubusercontent.com/JaminMa/ConfigsForNewTerminals/master/.gitconfig > ~/.gitconfig

echo Please enter your full name for Git config:

read gitFullName

git config --global user.name $gitFullName

echo Please enter your email for Git config:

read email

git config --global user.email $email

# ------

# SSH Key

while true; do
  read -p "Generate SSH key? (Y/n) " yn
  case $yn in
    [Yy]*|"")
      ssh-keygen
      echo Remember to upload the new token to your GitHub account 
      break;;
    [Nn]*)
      echo Skipping SSH key generation
      break;;
    *)
      echo Please enter yes or no;;
  esac
done

echo Script completed!

