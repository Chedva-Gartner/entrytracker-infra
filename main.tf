module "vpc" {
  source          = "./modules/VPC"
  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  # הערה: single_nat_gateway = true מוגדר בתוך המודול עצמו
}

module "iam" {
  source       = "./modules/IAM"
  cluster_name = var.cluster_name
}

module "eks" {
  source       = "./modules/EKS"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
  
  cluster_role_arn = module.iam.cluster_role_arn
}

module "nodegroups" {
  source          = "./modules/NodeGroups"
  cluster_name    = module.eks.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = module.iam.node_role_arn # חיבור מה-IAM
  subnet_ids      = module.vpc.private_subnets
  
  instance_types   = var.instance_types
  desired_capacity = var.desired_capacity
  min_capacity     = var.min_capacity
  max_capacity     = var.max_capacity
}
