#!/bin/bash

echo $1

docker build -t golang-with-dep --no-cache --build-arg WDIR=$1 .