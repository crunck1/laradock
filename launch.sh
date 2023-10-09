#!/bin/bash
docker-compose up -d  nginx redis workspace php-fpm php-worker
docker exec -it --user=laradock laradock-workspace-1 npm i && npm run dev
