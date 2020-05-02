#!/bin/bash
set -e

ORG="sybex"
APP="webcam"

docker build -t $ORG/$APP .
docker push $ORG/$APP
