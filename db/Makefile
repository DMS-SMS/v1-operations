# please access this Makefile in .. directory

.PHONY: mysql_docker
mysql_docker:
	docker-compose -f db/mysql_docker_compose.yml up -d

.PHONY: mysql_service
mysql_service:
	kubectl apply -f db/mysql-service.yaml

.PHONY: mysql_deploy
mysql_deploy:
	envsubst < db/mysql-deployment.yaml | kubectl apply -f -

.PHONY: mysql_volume
mysql_volume:
	envsubst < db/db-data-persistentvolumeclaim.yaml | kubectl apply -f -
