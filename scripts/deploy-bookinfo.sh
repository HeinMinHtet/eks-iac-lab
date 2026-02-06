#!/bin/bash
set -e

# This script deploys the Bookinfo application to the EKS cluster.

# Update kubeconfig
aws eks update-kubeconfig --name $(terraform -chdir=./terraform output -raw cluster_name) --region $(terraform -chdir=./terraform output -raw region)

# Create the bookinfo namespace
kubectl apply -f k8s/bookinfo/namespace.yaml

# Deploy the Bookinfo application
# The bookinfo.yaml file should be copied from the Istio samples
kubectl apply -f k8s/bookinfo/bookinfo.yaml -n bookinfo

# Deploy the Bookinfo gateway
# The gateway.yaml file should be copied from the Istio samples
kubectl apply -f k8s/bookinfo/gateway.yaml -n bookinfo
