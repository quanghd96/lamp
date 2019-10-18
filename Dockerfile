FROM docker

RUN apk update
RUN apk add docker-compose git

RUN git clone https://github.com/quanghd96/lamp-docker-compose.git lamp

WORKDIR /lamp

ENTRYPOINT ["/bin/sh", "./run.sh"]