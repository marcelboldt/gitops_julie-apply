#!/bin/sh

envsubst < $2 > /client.config
envsubst < $3 > /topology.yml

echo "JulieOps version $(julie-ops-cli.sh --version)"
echo ""
julie-ops-cli.sh \
    --brokers $1 \
    --clientConfig /client.config \
    --topology /topology.yml
