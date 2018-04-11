FROM alpine:3.4

RUN apk add --no-cache \
  openssh \
  git

# Key generation on the server
RUN ssh-keygen -A

WORKDIR /git-server/
RUN mkdir /git-server/repos
RUN mkdir /git-server/keys && adduser -D -s /usr/bin/git-shell admin && echo admin:empiredidnothingwrong | chpasswd && mkdir /home/admin/.ssh

#copy anything you want to run when you log in to the shell
COPY git-shell-commands /home/admin/git-shell-commands
# sshd_config file is edited for enable access key and disable access password
#COPY sshd_config /etc/ssh/sshd_config
COPY build-git.sh build-git.sh

EXPOSE 22

CMD ["sh", "build-git.sh"]
#RUN ./build-git.sh
