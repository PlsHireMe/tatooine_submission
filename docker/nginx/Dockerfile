FROM nginx

#RUN apt-get update
#RUN apt-get install git -y

#COPY gitgrab_d.sh /gitgrab_d.sh
#COPY rundaemon.sh /rundaemon.sh
COPY ssl-snippet /etc/nginx/snippets/self-signed.conf
COPY ssl-params-snippet /etc/nginx/snippets/ssl-params.conf

#RUN /rundaemon.sh
