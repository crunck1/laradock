#!/bin/bash
docker-compose up -d  nginx redis workspace php-fpm php-worker
docker exec -it --user=laradock laradock-workspace-1 php artisan storage:link 
docker exec -it --user=laradock laradock-workspace-1 composer install && npm i && npm run dev