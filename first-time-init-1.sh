#!/bin/bash

cp dotenv .env
docker-compose pull && \
docker pull sicadaco/bluecherry-server:latest && \
docker pull mysql:latest && \
echo ""
echo ========================================================
echo "when you see this: '/usr/sbin/mysqld: ready for connections. Version' stop the container by ctrl+c and run the ./first-time-init-2.sh script"
echo =======================================================
echo ""
docker-compose up mysql

