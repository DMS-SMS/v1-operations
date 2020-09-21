
.PHONY: jaeger-dev
jaeger-dev:
	docker-compose -f tracer/jaeger_dev_docker_compose.yml up -d

.PHONY: consul-dev
consul-dev:
	docker-compose -f registry/consul_dev_docker_compose.yml up -d

.PHONY: mysql-dev
mysql-dev:
	docker-compose -f db/mysql_dev_docker_compose.yml up -d