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
	kubectl apply -f db/db-data-persistentvolume.yaml
	kubectl apply -f db/db-data-persistentvolumeclaim.yaml

.PHONY: mysql_stack
mysql_stack:
	docker stack deploy -c db/mysql_docker_compose.yml DSM_SMS
