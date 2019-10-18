FROM docker
ARG name
ENV name=${name}
RUN apk update
RUN apk add docker-compose git

RUN git clone https://github.com/quanghd96/lamp-docker-compose.git lamp_${name}

WORKDIR /lamp_${name}

ENTRYPOINT ["/bin/sh", "./run.sh"]