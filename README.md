# V1-Operations
## Getting Started
### Installation
__Development setup__
1. Clone the repo
    ```bash
    $ gh repo clone DMS-SMS/v1-operations
    ```
2. Enter your SQL configuration in environment
    ```bash
    $ export MYSQL_ROOT_PASSWORD={SQL-PASSWORD}
    ```
3. run  
    3-1. on docker
    ```bash
    $ make -f db/Makefile mysql_docker # run mysql
    $ make -f registry/Makefile consul_docker # run consul
    $ make -f tracer/Makefile jaeger_docker # run jaeger
    $ make -f mongo/Makefile mongo_docker # run mongo
    $ make -f redis/Makefile redis_docker # run redis
    $ make -f elk/Makefile elk_dokcer # run elk
    ```
    3-2. on kubernetes
    ```bash
    # run mysql
    $ make -f db/Makefile mysql_service
    $ make -f db/Makefile mysql_volume
    $ make -f db/Makefile mysql_deploy

    # run consul
    $ make -f registry/Makefile consul_service
    $ make -f registry/Makefile consul_volume
    $ make -f registry/Makefile consul_deploy

    # run jaeger
    $ make -f tracer/Makefile jaeger_service
    $ make -f tracer/Makefile jaeger_deploy

    # run mongo
    $ make -f mongo/Makefile mongo_service
    $ make -f mongo/Makefile mongo_volume
    $ make -f mongo/Makefile mongo_deploy

    # run redis
    $ make -f redis/Makefile redis_service
    $ make -f redis/Makefile redis_deploy
   
    # run elk
    $ make -f elk/Makefile elk_service
    $ make -f elk/Makefile elk_volume
    $ make -f elk/Makefile elk_deploy 
    ```
    3-3. on docker swarm
    ``` bash
    $ make -f db/Makefile mysql_stack # run mysql
    $ make -f registry/Makefile consul_stack # run consul
    $ make -f tracer/Makefile jaeger_stack # run jaeger
    $ make -f mongo/Makefile mongo_stack # run mongo
    $ make -f redis/Makefile redis_stack # run redis
    $ make -f elk/Makefile elk_stack # run elk
    ```
 