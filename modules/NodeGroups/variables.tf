variable "cluster_name" {
  type        = string
}

variable "node_group_name" {
  type        = string
}

variable "node_role_arn" {
  type        = string
}

variable "subnet_ids" {
  type        = list(string)
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "desired_capacity" {
  type        = number
  default     = 2
}

variable "min_capacity" {
  type        = number
  default     = 1
}

variable "max_capacity" {
  type        = number
  default     = 3
}
