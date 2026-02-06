#!/bin/bash
set -e

# This script deploys Istio to the EKS cluster.

# Update kubeconfig
aws eks update-kubeconfig --name $(terraform -chdir=./terraform output -raw cluster_name) --region $(terraform -chdir=./terraform output -raw region)

# Create the istio-system namespace
kubectl create namespace istio-system || true

# Install Istio
# The install.yaml file should be generated using istioctl
kubectl apply -f k8s/istio/install.yaml
