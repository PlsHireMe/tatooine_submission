FROM alpine:3.4

RUN apk add --no-cache \
  openssh \
  git

# Key generation on the server
RUN ssh-keygen -A

WORKDIR /git-server/

RUN mkdir /git-server/repos && \
	mkdir /git-server/keys && \
	adduser -D -s /usr/bin/git-shell admin && \
	echo admin:empiredidnothingwrong | chpasswd && \
	mkdir /home/admin/.ssh

COPY build-git.sh build-git.sh

EXPOSE 22

CMD ["sh", "build-git.sh"]
