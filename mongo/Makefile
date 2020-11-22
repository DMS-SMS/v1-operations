# please access this Makefile in .. directory

.PHONY: mongo_docker
mongo_docker:
	docker-compose -f mongo/mongo_docker_compose.yml up -d

.PHONY: mongo_service
mongo_service:
	kubectl apply -f mongo/mongo-service.yaml

.PHONY: mongo_deploy
mongo_deploy:
	envsubst < mongo/mongo-deployment.yaml | kubectl apply -f -

.PHONY: mongo_volume
mongo_volume:
	envsubst < mongo/mongo-db-data-persistentvolumeclaim.yaml | kubectl apply -f -
