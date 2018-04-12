FROM ubuntu

RUN apt-get update
RUN apt-get install git -y

COPY gitgrab_d.sh /gitgrab_d.sh


CMD ["sh", "gitgrab_d.sh"]
#RUN git --git-dir=/git-server/repos/admin.git log --pretty=format: --name-only --diff-filter=A > /git-server/files/output.txt

#RUN ./build-git.sh
