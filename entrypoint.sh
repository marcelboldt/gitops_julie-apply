#!/bin/sh

pwd
ls -l

kafka-topology-builder.sh --version
echo ""
kafka-topology-builder.sh \
    --brokers $1 \
    --clientConfig $2 \
    --topology $3 \
    --dryRun
