#!/bin/bash

aws deploy create-deployment \
  --application-name laundrapp-test-pulse \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name laundrapp-test-pulse-deployment-group \
  --region eu-west-2 \
  --github-location repository=laundrapp/code-deploy-sample,commitId=$1
