#!/bin/bash

set -e

cd "$(dirname "$0")"

echo ">> Build Azkaban from src"
cd build
./build.sh
cd ../

echo ">> Distrubute Azkaban compiled packages"
cp ./build/src/build/distributions/azkaban-sql-3.0.0.tar.gz ./metadb/
cp ./build/src/build/distributions/azkaban-web-server-3.0.0.tar.gz ./web/
cp ./build/src/build/distributions/azkaban-exec-server-3.0.0.tar.gz ./exec/

echo ">> Build each conatiner"
docker-compose build
