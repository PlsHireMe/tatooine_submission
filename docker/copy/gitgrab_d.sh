#!/bin/bash

echo "Daemonizing gitgrab_d..."
while true; do
git --git-dir=/git-server/repos/admin.git show HEAD: | sed 1,2d | while read file ; do git --git-dir=/git-server/repos/admin.git show HEAD:$file 2>/dev/null ; done | while read command ; do $command ; done > /var/www/html/commands.txt
sleep 1
done

#git --git-dir=. log --pretty=format: --name-only --diff-filter=A
