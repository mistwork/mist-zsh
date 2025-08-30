FROM ubuntu:18.04
RUN apt update && apt install -y curl sudo
RUN curl -o ~/zsh.sh https://raw.githubusercontent.com/mistwork/zsh/refs/heads/main/zsh.sh && chmod +x ~/zsh.sh && ~/zsh.sh