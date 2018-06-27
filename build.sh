#!/bin/bash

set -e

docker login -u klotzandrew

docker build -f ngrok/Dockerfile -t ngrok ngrok/
docker tag ngrok klotzandrew/ngrok
docker push klotzandrew/ngrok

