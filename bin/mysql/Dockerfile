FROM mysql:5.7

RUN apt update
RUN apt install nano

ADD *.cnf /etc/mysql/

ADD *.sh /
RUN chmod +x /*.sh

WORKDIR /etc/mysql