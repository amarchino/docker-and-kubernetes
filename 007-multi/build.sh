#!/bin/bash

pushd backend
docker build -t 007-multi:backend .
popd
pushd frontend
docker build -t 007-multi:frontend .
popd
