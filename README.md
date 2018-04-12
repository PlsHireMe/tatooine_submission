This build runs off four docker containers and can be executed by 

'COMPOSE_HTTP_TIMEOUT=8000 docker-compose up' from within the directory.

When running, https is served over port 443 via nginx self-signed certs.  A git server is running on port 22, via ssh within the /git-server/repo/admin.git repository
When commands are passed in .sh files to the admin git repo, they will be exectued on an Ubuntu machine (within the copy container) and the output ported to 
ADD SSL DETAILS
