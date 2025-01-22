#!/bin/bash

VERSION=4.4.2
TAG=2025-01-22
MYHUBID=larsvilhuber
MYNAME=replicability-training-presentation
MYIMG=$MYHUBID/${MYNAME}:${TAG}

docker=$(which docker1 2>/dev/null)
[[ -z $docker ]] && docker=$(which docker)


if [[ "$docker" == "/programs/docker/bin/docker1" ]]
then
  # we need to copy the Stata license
  BIOHPCWD=/workdir/$(whoami)
  [[ -d $BIOHPCWD ]] || mkdir $BIOHPCWD
  chmod a+rwx $BIOHPCWD
  chmod a+rw $BIOHPCWD/*
fi

$docker run -it --rm \
  -v "$(pwd)/":/project \
  -w /project \
  $MYIMG quarto render index.qmd




