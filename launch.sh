#!/bin/bash
docker-compose up -d  nginx redis workspace php-fpm php-worker
docker-compose exec workspace bash
chown -R laradock:laradock /var/www
docker exec -it --user=laradock laradock-workspace-1 php artisan storage:link 
docker exec -it --user=laradock laradock-workspace-1 composer install 
docker exec -it --user=laradock laradock-workspace-1 npm i 
docker exec -it --user=laradock laradock-workspace-1 npm run dev
