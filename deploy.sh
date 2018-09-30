#!/bin/bash -x

set -e
set -u

app_name="flask-kubernetes-example"

docker build . -t ${app_name}:latest && \

kubectl run ${app_name} --image=${app_name}:latest --port=5000 --image-pull-policy=Never && \

curl -IL $(minikube service ${app_name} --url)
