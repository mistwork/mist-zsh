FROM ubuntu:18.04
RUN apt update && apt install -y curl git
COPY zsh.sh /root/zsh.sh
RUN bash chmod +x /root/zsh.sh
CMD ["/root/zsh.sh"]