#!/bin/bash

set -e

cd "$(dirname "$0")"

PWD=$(pwd)

echo "========== Docker conatiner pre build =========="
docker build -t azkaban-build .

rm -rf ${PWD}/src
git clone https://github.com/azkaban/azkaban.git ./src
cd src
git checkout 3.0.0
cd ../

echo "========== Run Docker conatiner =========="
docker run --rm=true -t -i \
  -w /root \
  -v ${PWD}/.gradle:/root/.gradle \
  -v ${PWD}/src:/root \
  "azkaban-build" \
  --cpuset-cpus="0-3" \
  ./gradlew -d distTar -x test
