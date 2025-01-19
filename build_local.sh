#!/bin/bash
PWD=$(pwd)
repo=${PWD##*/}
dockerspace=larsvilhuber

case $USER in
  vilhuber|larsvilhuber)
  WORKSPACE=$PWD
  ;;
  codespace)
  WORKSPACE=/workspaces
  ;;
esac
  
# build the docker if necessary


docker pull $dockerspace/$repo 

docker run   -v $WORKSPACE:/project -w /project --rm $dockerspace/$repo ./_build.sh
