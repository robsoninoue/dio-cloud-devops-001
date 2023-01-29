#!/bin/bash

docker build -t nome/projeto-backend:1.0 backend/.
docker build -t nome/projeto-database:1.0 database/.

docker push nome/projeto-backend:1.0
docker push nome/projeto-database:1.0

kubectl apply -f ./services.yml

kubectl apply -f ./deployment.yml