#!/bin/bash

echo "Script is running..."
# apt update
apt install -y zsh curl
clear
apt install powerline fonts-powerline -y
clear
chsh -s $(which zsh)
zsh --version
echo "y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
clear
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

sed -i 's/${AGNOSTER_STATUS_ROOT_FG:=yellow}/${AGNOSTER_STATUS_ROOT_FG:=cyan}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme

sed -i 's/${AGNOSTER_GIT_CLEAN_BG:=green}/${AGNOSTER_GIT_CLEAN_BG:=black}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/${AGNOSTER_GIT_DIRTY_FG:=black}/${AGNOSTER_GIT_DIRTY_FG:=white}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/${AGNOSTER_GIT_DIRTY_BG:=yellow}/${AGNOSTER_GIT_DIRTY_FG:=black}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme


sed -i 's/${AGNOSTER_DIR_BG:=blue}/${AGNOSTER_DIR_BG:=white}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/robbyrussell/agnoster/' ~/.zshrc

exec zsh