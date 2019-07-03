#!/bin/bash

export GITHUB_ACCOUNT=$1
export VERSION_TAG=$2
export IMAGE=$GITHUB_ACCOUNT/keptn-orders-front-end:$VERSION_TAG

clear
if [ $# -lt 2 ]
then
  echo "missing arguments. Expect ./buildrun.sh <registry> <tag>"
  exit 1
fi

docker build -t $IMAGE .

echo ""
echo "access app @ http://localhost:8080"
echo "" 
docker run -it -p 8080:8080 robjahn/keptn-orders-front-end:1 

