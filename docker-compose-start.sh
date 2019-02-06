#!/bin/bash

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker volume rm flask_db_data
docker-compose up -d