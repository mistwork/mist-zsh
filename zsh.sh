#!/bin/sh

echo "Script is running..."
apt update && apt install -y zsh
zsh --version
echo "[INFO] Starting interactive shell. Type 'exit' to quit."
exec zsh