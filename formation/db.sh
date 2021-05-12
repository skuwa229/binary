#!/bin/bash

STACK_NAME="go-server-db"
SYSTEM_NAME="go-server"
DB_NAME="gosever"

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/db.yml \
  --parameter-overrides \
  SystemName=${SYSTEM_NAME} \
  DbName=${DB_NAME}

