#!/bin/bash

docker run --name 007-mongo    --rm -d --network 007-multi mongo
docker run --name 007-backend  --rm -d --network 007-multi -p 80:80 007-multi:backend
docker run --name 007-frontend --rm -d --network 007-multi -p 3000:3000 -it 007-multi:frontend
