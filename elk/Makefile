# please access this Makefile in .. directory

.PHONY: elk_docker
elk_docker:
	docker-compose -f elk/elk_docker_compose.yml up -d

.PHONY: elk_service
elk_service:
	kubectl apply -f elk/elasticsearch-service.yaml
	kubectl apply -f elk/kibana-service.yaml
	kubectl apply -f elk/logstash-service.yaml

.PHONY: elk_volume
elk_volume:
	kubectl apply -f elk/elasticsearch-persistentvolume.yaml
	kubectl apply -f elk/elasticsearch-persistentvolumeclaim.yaml

.PHONY: elk_deploy
elk_deploy:
	envsubst < elk/elasticsearch-deployment.yaml | kubectl apply -f -
	envsubst < elk/kibana-deployment.yaml | kubectl apply -f -
	envsubst < elk/logstash-deployment.yaml | kubectl apply -f -

.PHONY: elasticsearch_stack
elasticsearch_stack:
	docker stack deploy -c elk/elasticsearch_docker_compose.yml DSM_SMS

.PHONY: logstash_kibana_stack
logstash_kibana_stack:
	docker stack deploy -c elk/elk_docker_compose.yml DSM_SMS

.PHONY: remove_logstash_kibana_stack
remove_logstash_kibana_stack:
	docker rm DSM_SMS_logstash DSM_SMS_kibana
