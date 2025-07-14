# AI on EKS Example Repository

This repository demonstrates how to utilize the [AI on EKS](https://awslabs.github.io/ai-on-eks/) project in your own workflow.

## Overview

AI on EKS provides modular Terraform templates and curated deployment blueprints to run scalable AI/ML workloads on Amazon EKS. This example shows a minimal setup to deploy an AI workload using Terraform and Kubernetes manifests.

## Prerequisites

- AWS CLI configured with appropriate permissions
- Terraform installed
- kubectl installed
- An AWS account with permissions to create EKS clusters and related resources

## Deployment Steps

1. **Clone this repository**

2. **Initialize Terraform and apply the infrastructure**
   ```bash
   terraform init
   terraform apply -auto-approve
   ```

3. **Configure kubectl to use the new EKS cluster**
   ```bash
   aws eks --region us-west-2 update-kubeconfig --name ai-on-eks-example
   ```

4. **Deploy AI workload manifests**
   ```bash
   kubectl apply -f ai-workload.yaml
   ```

## Example AI Workload

This example deploys a JARK stack (Jupyter, Apache Airflow, Ray, Kubeflow) on EKS for comprehensive AI/ML workflows.

## License

Apache 2.0
