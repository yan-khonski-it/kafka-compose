# kafka-compose
docker-compose file with kafka.

It allows to run kafka on dev machine without installing it.
It contains zookeeper, kafka, kafka-topics-creator.

kafka-topics-creator creates topics and exists.

Note, there is one kafka broker;
each topic has replication factor 1 and each topic has one partition.

## How to check topics created
After `kafka-topics-creator` finished, you can check the topics.

1) connect to the kafka broker container. `docker exec -it kafka bash`.
On Windows machine, you may need `winpty docker exec -it kafka bash`.

2) Navigate to kafka directory. In this example, `cd usr/bin`.

3) Check kafka topics with
`kafka-topics --list --zookeeper zookeeper:32181`
https://stackoverflow.com/questions/44405663/list-all-kafka-topics