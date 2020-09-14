#!/bin/bash

cd ~
sudo apt-get update -qq

sudo apt-get install -yy git zsh
chsh -s $(which zsh)

exit

rm -rf ~/.oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf ~/.dotfiles
git clone https://github.com/sh4hids/.dotfiles.git

ln -sf ~/.dotfiles/zsh/themes/mavit.zsh-theme ~/.oh-my-zsh/themes/mavit.zsh-theme

rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

