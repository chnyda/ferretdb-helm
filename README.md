# FerretDB Helm Chart

This repository hosts the Helm chart for [FerretDB](https://github.com/FerretDB/FerretDB), a modern open-source alternative to MongoDB.

## Prerequisites

Before installing the FerretDB Helm chart, you need to have the [Percona PostgreSQL Operator](https://github.com/percona/percona-postgresql-operator) installed and running in your Kubernetes cluster. FerretDB relies on PostgreSQL as the backend database, and the Percona PostgreSQL Operator provides a robust and scalable PostgreSQL solution.

You can install the Percona PostgreSQL Operator by following their installation guide [here](https://github.com/percona/percona-postgresql-operator#installation).

### Quickstart

```bash
kubectl create namespace ferretdb
kubectl apply --server-side -f https://raw.githubusercontent.com/percona/percona-postgresql-operator/v2.3.1/deploy/bundle.yaml -n ferretdb

```


## Usage

### Adding the Helm Repository

To add the FerretDB Helm chart repository, run the following command:

```bash
helm repo add ferretdb https://chnyda.github.io/ferretdb-helm
```

### Install the chart

```bash
helm install mydb --namespace ferretdb ferretdb/ferretdb
```
