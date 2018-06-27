#!/bin/bash

npm run build;
git clone https://github.com/bigchaindb/bigchaindb;

if [ -d "bigchaindb" ]; then
  cd bigchaindb;
  git pull;
  cd ..;
else 
  git clone https://github.com/bigchaindb/bigchaindb
fi

mv ./docker-compose.yml ./bigchaindb/docker-compose.yml;

docker-compose build -d bigchaindb &&
docker-compose run -d bdb;