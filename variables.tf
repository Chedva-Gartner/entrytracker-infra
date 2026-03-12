variable "region" {
  type        = string
  description = "The AWS region where resources will be created."
}

variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster."
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "azs" {
  type        = list(string)
  description = "A list of availability zones in the region."
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC."
}

variable "node_group_name" {
  type        = string
  description = "The name of the EKS node group."
}

variable "node_role_arn" {
  type        = string
  description = "The ARN of the IAM role for the EKS nodes."
}

variable "instance_types" {
  type        = list(string)
  description = "The instance types for the EKS nodes."
}

variable "desired_capacity" {
  type        = number
  description = "The desired number of nodes in the node group."
}

variable "min_capacity" {
  type        = number
  description = "The minimum number of nodes in the node group."
}

variable "max_capacity" {
  type        = number
  description = "The maximum number of nodes in the node group."
}
