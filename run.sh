#!/bin/sh
mkdir ${name}
cp /lamp /${name}
cd /${name}
docker-compose up -d