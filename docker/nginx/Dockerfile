FROM nginx

#COPY ../../ssl/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY ssl-snippet /etc/nginx/snippets/self-signed.conf
COPY ssl-params-snippet /etc/nginx/snippets/ssl-params.conf
