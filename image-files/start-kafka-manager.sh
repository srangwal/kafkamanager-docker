#! /usr/bin/env bash

if [[ -z "$ZKHOSTS" ]]
then
	[[ -z "$ZK_PORT_2181_TCP_ADDR" ]] && echo "ZKHOSTS should be defined or container should be linked with zookeeper container as zk" && exit 1
	ZKHOSTS=$ZK_PORT_2181_TCP_ADDR:$ZK_PORT_2181_TCP_PORT
fi

echo $ZKHOSTS
$KAFKA_MANAGER_HOME/bin/kafka-manager -Dkafka-manager.zkhosts=$ZKHOSTS
