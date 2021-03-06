#!/bin/bash

cd ./vue;
npm install;
npm run build;
cd ..;

if [ -d "bigchaindb" ]; then
  sudo rm -rf bigchaindb;
fi;

git clone https://github.com/bigchaindb/bigchaindb

rm -rf ./bigchaindb/docker-compose.yml;
cp -f ./docker-compose.yml ./bigchaindb/docker-compose.yml;

cd bigchaindb;
docker-compose build bigchaindb &&
docker-compose run -d bdb;
