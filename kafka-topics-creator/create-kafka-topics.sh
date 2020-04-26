#!/bin/bash

# Simply wait until original kafka container and zookeeper are started.
sleep 15.0s

# Parse string of kafka topics into an array.
# https://stackoverflow.com/a/10586169/1839360
kafkaTopicsArrayString="$KAFKA_TOPICS"
IFS=' ' read -r -a kafkaTopicsArray <<< "$kafkaTopicsArrayString"

# Zookeeper hosts
zookeeperHostsValue=$ZOOKEEPER_HOSTS

echo "Zookeeper host: "
echo "$zookeeperHostsValue"

# Create kafka topic for each item
for newTopic in "${kafkaTopicsArray[@]}"; do
  # https://kafka.apache.org/quickstart
  kafka-topics --create --zookeeper "$zookeeperHostsValue" --topic "$newTopic" --partitions 1 --replication-factor 1 --if-not-exists
done
