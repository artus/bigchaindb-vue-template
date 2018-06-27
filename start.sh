#!/bin/bash

npm install;
npm run build;
git clone https://github.com/bigchaindb/bigchaindb;

if [ -d "bigchaindb" ]; then
  rm -rf bigchaindb;
fi;

git clone https://github.com/bigchaindb/bigchaindb

cp -f ./docker-compose.yml ./bigchaindb/docker-compose.yml;

docker-compose build bigchaindb &&
docker-compose run -d bdb;
