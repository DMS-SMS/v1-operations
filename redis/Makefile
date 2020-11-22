# please access this Makefile in .. directory

.PHONY: redis_docker
redis_docker:
	docker-compose -f redis/redis_docker_compose.yml up -d

.PHONY: redis_service
redis_service:
	kubectl apply -f redis/redis-service.yaml

.PHONY: redis_deploy
redis_deploy:
	envsubst < redis/redis-deployment.yaml | kubectl apply -f -
