provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "ai-on-eks-example"
  cluster_version = "1.24"
  subnets         = ["subnet-xxxxxx", "subnet-yyyyyy"]  # Replace with your subnet IDs
  vpc_id          = "vpc-xxxxxx"                        # Replace with your VPC ID

  node_groups = {
    ray_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "m5.xlarge"
    }
  }
}
