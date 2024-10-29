variable "region" {
  description = "AWS region for EKS cluster"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS ecommerce cluster"
  type        = string
  default     = "ecommerce-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID where EKS cluster will be deployed"
  type        = string
  default = "vpc-0becd8c5da446aa30"
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
  default = [ "subnet-079dfce3a9ee85195" ]
}
