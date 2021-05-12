#!/bin/bash

STACK_NAME="go-server-vpc"
SYSTEM_NAME="go-server"

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/vpc.yml \
  --parameter-overrides \
  SystemName=${SYSTEM_NAME}

