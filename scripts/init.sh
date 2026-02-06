#!/bin/bash
set -e

# This script initializes Terraform and configures the AWS provider.

# -reconfigure: a new backend configuration is provided
# -migrate-state: migrate the existing state to the new backend
terraform -chdir=./terraform init -reconfigure
