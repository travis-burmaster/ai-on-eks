# Technology Stack

## Infrastructure
- **Terraform**: Infrastructure as Code for AWS resources
- **AWS EKS**: Managed Kubernetes service
- **AWS CLI**: Command-line interface for AWS services

## Container Orchestration
- **Kubernetes**: Container orchestration platform
- **kubectl**: Kubernetes command-line tool
- **Ray**: Distributed computing framework for AI/ML workloads

## Common Commands

### Infrastructure Management
```bash
# Initialize Terraform
terraform init

# Plan infrastructure changes
terraform plan

# Apply infrastructure changes
terraform apply -auto-approve

# Destroy infrastructure
terraform destroy
```

### Kubernetes Operations
```bash
# Configure kubectl for EKS cluster
aws eks --region us-west-2 update-kubeconfig --name ai-on-eks-example

# Deploy AI workloads
kubectl apply -f ai-workload.yaml

# Check cluster status
kubectl get nodes
kubectl get pods

# View Ray cluster status
kubectl get rayclusters
```

## Dependencies
- AWS account with EKS permissions
- Terraform >= 0.12
- kubectl
- AWS CLI configured with appropriate credentials