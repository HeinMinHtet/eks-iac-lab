Project Title

AWS EKS with Istio (Bookinfo) – Terraform Infrastructure Project

Goal

Provision a fully working Kubernetes environment on AWS using Terraform, deploy Istio with automatic sidecar injection, and run the Bookinfo sample application as a service mesh demo.

High-Level Architecture

-AWS VPC (public + private subnets)
-EKS Cluster (managed node groups)
-IAM roles for EKS, nodes, and controllers
-Istio control plane installed on EKS
-Bookinfo application with Envoy sidecar injection
-External access via Istio Ingress Gateway


Tech Stack

-Terraform (IaC)
-AWS EKS
-Kubernetes
-Istio
-kubectl, istioctl, aws-cli
-Helm (optional but recommended)

Project structure 

eks-istio-bookinfo/
├── terraform/
│   ├── providers.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── eks.tf
│   ├── iam.tf
│   ├── outputs.tf
│   └── versions.tf
├── k8s/
│   ├── istio/
│   │   ├── install.yaml
│   │   └── ingress.yaml
│   └── bookinfo/
│       ├── namespace.yaml
│       ├── bookinfo.yaml
│       └── gateway.yaml
├── scripts/
│   ├── init.sh
│   ├── deploy-istio.sh
│   └── deploy-bookinfo.sh
└── planning.md
