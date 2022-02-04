#!/bin/sh

pwd
ls -l

envsubst < $2 > /client.config
envsubst < $3 > /topology.yml

kafka-topology-builder.sh --version
echo ""
kafka-topology-builder.sh \
    --brokers $1 \
    --clientConfig /client.config \
    --topology /topology.yml \
    --dryRun
