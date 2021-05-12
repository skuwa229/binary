#!/bin/bash

STACK_NAME="go-server-fargate"
SYSTEM_NAME="go-server"
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
IMAGE_URI=${ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com/${SYSTEM_NAME}

aws cloudformation deploy --stack-name ${STACK_NAME} --template-file ../template/fargate.yml \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
  SystemName=${SYSTEM_NAME} \
  ImageUri=${IMAGE_URI}

