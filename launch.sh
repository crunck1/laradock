#!/bin/bash
docker-compose up -d cube_api cube_refresh_worker cubestore_router cubestore_worker_1 cubestore_worker_2  nginx devpostgres redis workspace php-fpm php-worker nominatim
docker exec -it --user=laradock laradock-workspace-1 npm run dev
