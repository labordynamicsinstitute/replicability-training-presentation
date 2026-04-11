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

BUILD=no
arg1=$1

docker pull $dockerspace/$repo 
if [[ $? == 1 ]]
then
  ## maybe it's local only
  docker image inspect $dockerspace/$repo > /dev/null
  [[ $? == 0 ]] && BUILD=no || BUILD=yes
fi
# override
[[ "$arg1" == "force" ]] && BUILD=yes


# map the local .cache folder to the docker container, so that we don't have to redownload all the packages every time
if [[ ! -d $PWD/.cache ]]
then
  mkdir $PWD/.cache
fi

CACHE="-v $PWD/.cache:/home/rstudio/.cache"

docker run -e DISABLE_AUTH=true  -v $WORKSPACE:/home/rstudio/project $CACHE --rm --name rstudio -p 8787:8787 $dockerspace/$repo
