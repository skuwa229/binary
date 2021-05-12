#!/bin/bash

STACK_NAME="go-server-ecs"
SYSTEM_NAME="go-server"

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/ecs.yml \
  --parameter-overrides \
  SystemName=${SYSTEM_NAME}

