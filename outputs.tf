# outputs.tf

# Output the EKS cluster endpoint for API access
output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS Kubernetes cluster."
  value       = module.eks.cluster_endpoint
}

# Output the EKS cluster name
output "eks_cluster_name" {
  description = "The name of the EKS Kubernetes cluster."
  value       = module.eks.cluster_id
}

# Output EKS cluster security group ID
output "eks_cluster_security_group_id" {
  description = "The security group ID for the EKS cluster."
  value       = module.eks.cluster_security_group_id
}

# Output the VPC ID where EKS is deployed
output "vpc_id" {
  description = "The VPC ID in which the EKS cluster is deployed."
  value       = module.vpc.vpc_id
}

# Output private and public subnets
output "private_subnet_ids" {
  description = "IDs of private subnets in the VPC."
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "IDs of public subnets in the VPC."
  value       = module.vpc.public_subnets
}

# Output node security group
output "eks_node_security_group_id" {
  description = "Security group ID for the EKS worker nodes."
  value       = module.eks.node_security_group_id
}

# # Output external URL of the frontend
# output "frontend_service_url" {
#   description = "External URL of the React frontend LoadBalancer service."
#   value       = null_resource.react_frontend.provisioner.local-exec[1].command
# }