#!/bin/bash

set -ex

docker login -u klotzandrew

docker build -f ngrok/Dockerfile -t ngrok ngrok/
docker tag ngrok klotzandrew/ngrok
docker push klotzandrew/ngrok

docker build -f awscli/Dockerfile -t awscli awscli/
docker tag awscli klotzandrew/awscli
docker push klotzandrew/awscli
