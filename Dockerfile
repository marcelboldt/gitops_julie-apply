FROM purbon/kafka-topology-builder:4.1.0

RUN apk add gettext
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
