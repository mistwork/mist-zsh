FROM ubuntu:18.04

RUN apt update && apt install -y locales \
    && locale-gen en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt update && apt install -y curl git
COPY zsh.sh /root/zsh.sh
RUN chmod +x /root/zsh.sh && bash /root/zsh.sh
CMD ["/root/zsh.sh"]