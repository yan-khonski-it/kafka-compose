# It is recommended to use as kafka broker, so no additional images are pulled.

FROM confluentinc/cp-kafka:4.1.2

WORKDIR usr/bin

# Once it is executed, this container is not needed.
COPY create-kafka-topics.sh create-kafka-topics.sh

ENTRYPOINT ["./create-kafka-topics.sh"]