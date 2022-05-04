php:
	docker-compose exec laravel bash
start:
	docker-compose up
stop:
	docker-compose stop

destroy:
	docker-compose down --rmi all --volumes --remove-orphans

composer_install:
	docker build -t ecs-hands-on/composer:latest -f ./docker/composer/Dockerfile .

build:
	docker compose build --no-cache --force-rm

laravel_build:
	docker build -t ecs-hands-on/laravel:latest -f ./docker/laravel/Dockerfile .	

laravel_exec:
	docker run -it ecs-hands-on/laravel:latest bash

composer_update:
	docker run -v $(PWD)/src:/application ecs-hands-on/composer:latest composer install

test:
	docker-compose exec laravel php ./vendor/bin/phpunit 
