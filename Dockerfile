FROM docker
ARG name
ARG port=8099
ENV name=${name}
ENV port=${port}

RUN echo "Build image with param: (${name} - ${port})"

RUN apk update
RUN apk add docker-compose git

RUN git clone https://github.com/quanghd96/lamp-docker-compose.git lamp_${name}

WORKDIR /lamp_${name}

ENTRYPOINT ["/bin/sh", "./run.sh"]