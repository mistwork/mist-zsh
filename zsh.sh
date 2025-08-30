#!/bin/sh

echo "Script is running..."
apt update && apt install -y zsh curl
apt install powerline fonts-powerline -y
chsh -s $(which zsh)
zsh --version
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "[INFO] Starting interactive shell. Type 'exit' to quit."
exec zsh