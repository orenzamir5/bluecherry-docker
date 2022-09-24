#!/bin/bash

for run in {1..2}; do
	docker-compose up -d mysql && \
	docker-compose run bluecherry bc-database-create && \
	docker-compose up -d bluecherry
done
echo ""
echo ===============================================================
echo "Done! you should now be able to access the bluecherry web interface at https://localhost:7001/"
echo ===============================================================
echo ""
