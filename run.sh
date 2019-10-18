#!/bin/sh
cp -r /lamp /${name}
cd /${name}
ls
docker-compose up -d