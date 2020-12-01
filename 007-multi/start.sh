#!/bin/bash

docker run --name 007-mongo --rm -e MONGO_INITDB_ROOT_USERNAME=max -e MONGO_INITDB_ROOT_PASSWORD=secret --network 007-net-multi -v 007-data-mongo:/data/db -d mongo
docker run --name 007-backend --rm -e MONGODB_USERNAME=max -d --network 007-net-multi -p 80:80 -v 007-data-logs:/app/logs -v $PWD/backend:/app 007-multi:backend
docker run --name 007-frontend --rm -d --network 007-net-multi -p 3000:3000 -it -v $PWD/frontend:/app 007-multi:frontend
