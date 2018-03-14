#!/bin/bash

echo $1

docker build -t golang-with-glide --no-cache --build-arg WDIR=$1 .