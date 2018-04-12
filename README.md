All that is required for this package is a docker install.  It has been tested on Ubungu 16.04.

This docker build runs off four docker containers and can be executed by 

'COMPOSE_HTTP_TIMEOUT=8000 docker-compose up -d' from within the directory.

to ternimate the process, run 'docker-compose down' from within the directory.

The first time this is run it will take a significant amount of time as it must build everything from scratch.  Subsequent calls will be much faster.  

When running, https is served over port 443 via nginx self-signed certs.  A git server is running on port 22, via ssh within the /git-server/repo/admin.git repository
When commands are passed in .sh files to the admin git repo, they will be exectued on an Ubuntu machine (within the copy container) and the output ported to the web root index.php

the files from the admin.git repository are automatically executed and their output copied over into the webroot via a deamon that runs every second.  I intentionally avoided using git clone from the nginx box, as I believe that to be bad form, rather I used git show commands and bash scripting to output the content of each file in the latest HEAD:.  This ensures everything is pushed to the nginx container from the root user copy container, rather than pulled in from a nginx www-data user.

To generate new SSL keys for HTTPS, simply create your own keys and place them in the ssl/ directory.  Github ssh keys are generated automatically with the password "empiredidnothingwrong".  

