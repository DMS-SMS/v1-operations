# please access this Makefile in .. directory

.PHONY: jaeger_docker
jaeger_docker:
	docker-compose -f tracer/jaeger_docker_compose.yml up -d

.PHONY: jaeger_service
jaeger_service:
	kubectl apply -f tracer/jaeger-service.yaml

.PHONY: jaeger_deploy
jaeger_deploy:
	envsubst < tracer/jaeger-deployment.yaml | kubectl apply -f -

.PHONY: jaeger_stack
jaeger_stack:
	docker stack deploy -c tracer/jaeger_docker_compose.yml DSM_SMS
