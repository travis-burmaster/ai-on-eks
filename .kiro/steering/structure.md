# Project Structure

## Root Directory Layout
```
├── README.md           # Project documentation and setup instructions
├── main.tf            # Terraform configuration for EKS infrastructure
├── ai-workload.yaml   # Kubernetes manifest for Ray cluster deployment
├── .git/              # Git version control
└── .kiro/             # Kiro AI assistant configuration and steering rules
```

## File Conventions

### Terraform Files
- `main.tf`: Primary infrastructure configuration
- Use `terraform-aws-modules/eks/aws` module for EKS cluster provisioning
- Configure AWS provider with `us-west-2` region by default
- Replace placeholder values (subnet IDs, VPC ID) with actual AWS resource identifiers

### Kubernetes Manifests
- `ai-workload.yaml`: Contains Ray cluster custom resource definitions
- Use `ray.io/v1alpha1` API version for Ray clusters
- Follow standard Kubernetes YAML formatting and structure
- Configure resource limits for both head and worker nodes

### Documentation
- `README.md`: Comprehensive setup and deployment instructions
- Include prerequisites, step-by-step deployment guide, and example usage
- Maintain Apache 2.0 license reference

## Naming Conventions
- EKS cluster name: `ai-on-eks-example`
- Ray cluster name: `example-ray-cluster`
- Node group naming: descriptive names like `ray_nodes`
- Use kebab-case for Kubernetes resource names
- Use snake_case for Terraform resource names