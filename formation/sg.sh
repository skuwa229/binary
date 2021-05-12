#!/bin/bash

STACK_NAME="go-server-sg"
SYSTEM_NAME="go-server"

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/sg.yml \
  --parameter-overrides \
  SystemName=${SYSTEM_NAME}

