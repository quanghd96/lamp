#!/bin/sh
mkdir ${name}
cp -r /lamp /${name}
cd /${name}
docker-compose up -d