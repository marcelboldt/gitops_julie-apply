#!/bin/sh

pwd
ls -l

envsubst < $2 > /client.config
envsubst < $3 > /topology.yml

julie-ops-cli.sh --version
echo ""
julie-ops-cli.sh \
    --brokers $1 \
    --clientConfig /client.config \
    --topology /topology.yml \
    --dryRun
