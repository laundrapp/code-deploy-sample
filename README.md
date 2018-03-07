# code-deploy-sample

Deployment with:

```sh
#!/bin/bash

repository=laundrapp/code-deploy-sample
commitId=cc254177b8856a0e285106a8f27db0a7f7203b6f

aws deploy create-deployment \
  --application-name laundrapp-dev-pulse \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name laundrapp-dev-pulse-deployment-group \
  --github-location repository=$repository,commitId=$commitId
```