#!/bin/bash

set -e
name="go-server"
repository_url=$1

eval $(aws ecr get-login --no-include-email --region ap-northeast-1)
docker build --no-cache --rm=true -t $name .
docker tag "$name:latest" "$repository_url/$name:latest"
docker push "$repository_url/$name:latest"
