# kafkamanager-docker
Docker setup for yahoo's kafkamanager

# Requirements
- Docker
- docker-compose (https://github.com/docker/fig/blob/master/docs/install.md)


# Running stand-alone (does not require docker-compose)
```sh
$> docker run -p 9000:9000 -e ZKHOSTS=<server>:<port> --name="kafka-manager" srangwala/kafkamanager
```
_ZKHOSTS is zookeeper that kafka-manager will use for its own bookkeeping. It is not required to match the zookeeper for any
of your kafka cluster._

# Starting kafkamanager with its own zookeeper
``` sh
$> docker-compose up
```
Open ```http://localhost:9000``` to start exploring


