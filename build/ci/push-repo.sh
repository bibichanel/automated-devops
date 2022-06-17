#!/bin/bash

set -exo pipefail

git config user.name "trunglk"
git config user.email "trunglk@fpt.com.vn"

git add .
git commit -m "update docker image tag $DOCKER_TAG"

git push origin $CI_COMMIT_REF_NAME

