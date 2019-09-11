FROM docker:latest

RUN apk add docker-compose

USER root

ADD . /lpic
RUN chmod +x /lpic/run.sh

EXPOSE 8888:8099

ENTRYPOINT ["/bin/sh","/lpic/run.sh"]