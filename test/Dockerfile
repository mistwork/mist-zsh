FROM ubuntu:18.04

RUN apt update && apt install -y locales \
    && locale-gen en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt update && apt install -y curl git
COPY ../script.sh /root/script.sh
RUN chmod +x /root/script.sh && bash /root/script.sh
CMD ["/root/script.sh"]