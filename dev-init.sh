#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Invalid number of parameters \n\n"
    echo "Usage: dev-init.sh <github username>"
    exit 1
fi
git --version && \
docker -v && \
docker-compose -v && \
git clone git@github.com:$1/django-app.git && \
#Repeat git clone for fork of all apps
docker-compose up -d
