
.PHONY: jaeger_server
jaeger_server:
	docker-compose -f tracer/jaeger_docker_compose.yml up -d

.PHONY: consul_server
consul_server:
	docker-compose -f registry/consul_docker_compose.yml up -d

.PHONY: mysql_server
mysql_server:
	docker-compose -f db/mysql_docker_compose.yml up -d