# gitops_julie-apply
Github action to apply a JulieOps topology to a Kafka cluster

## Inputs

## `brokers`

**Required** The Apache Kafka server(s) to connect
to. See Kafka [bootstrap.servers](https://kafka.apache.org/documentation/#producerconfigs_bootstrap).
Default `"broker:9092"`.

## `clientConfig`

**Required** The client configuration file. Default `client.config`


## `topology`

**Required** bTopology config file. Default `topology.yml`


## Example usage

```aidl
name: Deploy JulieOps topology
on: push
jobs:
  Test-julie-topoology:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Apply JulieOps topology
        id: julie
        uses: marcelboldt/gitops_julie-apply@v0.9
        with:
          brokers: broker:9092
          clientConfig: config/julieClient.config
          topology: myKafkaTopics.yml
```

See also https://github.com/marcelboldt/gitops_julie-apply_test
