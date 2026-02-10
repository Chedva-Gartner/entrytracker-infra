region       = "ap-south-1"
cluster_name = "entryTracker-eks"

vpc_cidr = "10.0.0.0/16"
azs      = ["ap-south-1a", "ap-south-1b"]

private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

cluster_name      = "entrytracker-cluster"
node_group_name   = "entrytracker-nodes"
node_role_arn     = "arn:aws:iam::<account-id>:role/entrytracker-node-role"
subnet_ids        = ["subnet-12345678", "subnet-87654321"]
instance_types    = ["t3.medium"]
disk_size         = 20
desired_capacity  = 2
min_capacity      = 1
max_capacity      = 3

