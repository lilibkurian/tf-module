//
//
output "security_group_description" {
  value = aws_security_group.example.description
}

output "security_group_vpcid" {
  value = aws_security_group.example.vpc_id
}

output "security_group_name" {
  value = aws_security_group.example.name
}
