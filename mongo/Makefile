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
	kubectl apply -f mongo/mongo-db-data-persistentvolume.yaml
	kubectl apply -f mongo/mongo-db-data-persistentvolumeclaim.yaml

.PHONY: mongo_stack
mongo_stack:
	docker stack deploy -c mongo/mongo_docker_compose.yml DSM_SMS
