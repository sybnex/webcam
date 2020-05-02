#!/bin/bash
set -e

ORG="sybnex"
APP="webcam"

docker build -t $ORG/$APP .
docker push $ORG/$APP
