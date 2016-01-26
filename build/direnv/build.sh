#!/bin/bash

set -e

DIRENV_VIRSION="2.7.0"

cd "$(dirname "$0")"

rm -fr ./dist/
mkdir -p ./dist/

docker build -t build-direnv:${DIRENV_VIRSION} --build-arg DIRENV_VIRSION=${DIRENV_VIRSION} .

docker run -v "$(pwd)/dist:/root/direnv/dist" -it build-direnv:${DIRENV_VIRSION} make dist
