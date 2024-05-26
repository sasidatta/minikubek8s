#!/bin/bash

# Create a namespace for monitoring
kubectl create namespace monitoring

# Deploy Prometheus
helm install prometheus prometheus-community/prometheus --namespace monitoring

# Deploy Grafana
helm install grafana grafana/grafana --namespace monitoring --set adminPassword=admin

# Expose Grafana
kubectl expose deployment grafana --type=NodePort --name=grafana-nodeport --namespace monitoring

