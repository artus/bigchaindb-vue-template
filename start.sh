#!/bin/bash

npm run build &&
git clone https://github.com/bigchaindb/bigchaindb &&
docker-compose build -d bigchaindb &&
docker-compose run -d bdb;