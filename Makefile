php:
	docker-compose exec laravel bash
start:
	docker-compose up
stop:
	docker-compose stop
composer_install:
	docker build -t ecs-hands-on/composer:latest -f ./docker/composer/Dockerfile .