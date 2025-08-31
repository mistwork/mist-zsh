#!/bin/bash

echo "Script is running..."
apt update
apt install -y zsh curl
#clear
apt install powerline fonts-powerline -y
#clear
chsh -s $(which zsh)
zsh --version

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Removing existing Oh My Zsh..."
    rm -rf "$HOME/.oh-my-zsh"
fi
echo "y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#clear
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

sed -i 's/${AGNOSTER_STATUS_ROOT_FG:=yellow}/${AGNOSTER_STATUS_ROOT_FG:=cyan}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme

sed -i 's/${AGNOSTER_GIT_CLEAN_BG:=green}/${AGNOSTER_GIT_CLEAN_BG:=black}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/${AGNOSTER_GIT_DIRTY_FG:=black}/${AGNOSTER_GIT_DIRTY_FG:=white}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/${AGNOSTER_GIT_DIRTY_BG:=yellow}/${AGNOSTER_GIT_DIRTY_FG:=white}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme

sed -i 's/${AGNOSTER_DIR_BG:=blue}/${AGNOSTER_DIR_BG:=white}/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i 's/robbyrussell/agnoster/' ~/.zshrc

if [ -d "$HOME/.zsh-syntax-highlighting" ]; then
    echo "Removing existing zsh-syntax-highlighting..."
    rm -rf "$HOME/.zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
fi

if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    echo "Removing existing zsh-autosuggestions..."
    rm -rf "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' ~/.oh-my-zsh/themes/agnoster.zsh-theme
fi

exec zsh
source ~/.zshrc
echo -e "\e[1;32mSuccessfully installed\e[0m"