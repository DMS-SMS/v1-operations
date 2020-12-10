# please access this Makefile in .. directory

.PHONY: consul_docker
consul_docker:
	docker-compose -f registry/consul_docker_compose.yml up -d

.PHONY: consul_service
consul_service:
	kubectl apply -f registry/consul-service.yaml

.PHONY: consul_deploy
consul_deploy:
	envsubst < registry/consul-deployment.yaml | kubectl apply -f -

.PHONY: consul_volume
consul_volume:
	kubectl apply -f registry/consul-data-persistentvolume.yaml
	kubectl apply -f registry/consul-data-persistentvolumeclaim.yaml

.PHONY: consul_stack
consul_stack:
	docker stack deploy -c registry/consul_docker_compose.yml DSM_SMS
