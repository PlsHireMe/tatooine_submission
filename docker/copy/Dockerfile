FROM ubuntu

RUN apt-get update
RUN apt-get install git -y

COPY gitgrab_d.sh /gitgrab_d.sh

ENTRYPOINT ./gitgrab_d.sh
