
.PHONY: jaeger_server
jaeger_server:
	docker-compose -f tracer/jaeger_docker_compose.yml up -d

.PHONY: consul_server
consul_server:
	docker-compose -f registry/consul_docker_compose.yml up -d

.PHONY: mysql_server
mysql_server:
	docker-compose -f db/mysql_docker_compose.yml up -d

.PHONY: mongo_server
mongo_server:
	docker-compose -f mongo/mongo_docker_compose.yml up -d

.PHONY: redis_server
redis_server:
	docker-compose -f redis/redis_docker_compose.yml up -d