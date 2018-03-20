# code-deploy-sample

Deployment with:

```sh
#!/bin/bash

repository=laundrapp/code-deploy-sample
commitId=10a97dfb9501a9ed8e228aede77aaf721b6d2753

aws deploy create-deployment \
  --application-name laundrapp-dev-pulse \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name laundrapp-dev-pulse-deployment-group \
  --github-location repository=$repository,commitId=$commitId
```