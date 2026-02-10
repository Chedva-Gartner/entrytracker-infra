output "node_group_name" {
  value       = aws_eks_node_group.example.node_group_name
}

output "node_group_arn" {
  value       = aws_eks_node_group.example.arn
}

output "node_instance_types" {
  value       = aws_eks_node_group.example.instance_types
}
