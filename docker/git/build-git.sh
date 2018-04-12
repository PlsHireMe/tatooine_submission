#!/bin/sh

# If there is some public key in keys folder
# then it copies its contain in authorized_keys file
if [ "$(ls -A /git-server/keys/)" ]; then
  cd /home/admin
  cat /git-server/keys/*.pub > .ssh/authorized_keys
  chown -R admin:admin .ssh
  chmod 700 .ssh
  chmod -R 600 .ssh/*
fi

# Checking permissions and fixing SGID bit in repos folder
cd /git-server/repos
chown -R admin:admin .
chmod -R ug+rwX .
find . -type d -exec chmod g+s '{}' + #have to set the 

# -D flag avoids executing sshd as a daemon
/usr/sbin/sshd -D
