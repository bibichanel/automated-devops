#!/bin/bash

cd $BUILD_PATH

git clone -b $REPO_BRANCH http://trunglk:$ACCESS_TOKEN@$REPO_CLONE

docker build -t $REGISTRY_USER/$PROJECT_NAME:$DOCKER_TAG .

docker login -u "$REGISTRY_USER" -p "$REGISTRY_PASS" 
docker push $REGISTRY_USER/$PROJECT_NAME:$DOCKER_TAG

docker rmi $REFISTRY_USER/$PROJECT_NAME:$DOCKER_TAG


