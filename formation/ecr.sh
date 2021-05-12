#!/bin/bash

STACK_NAME="go-server-ecr"

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/ecr.yml &
wait
aws ecr put-image-scanning-configuration --repository-name "go-server" --image-scanning-configuration scanOnPush=true

