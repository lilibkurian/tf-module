output "security_group_description_1" {
  value = module.sg.security_group_description
}

output "security_group_description_2" {
  value = var.nameabc
}

output "security_group_password" {
  sensitive = true
  value = var.password
}

output "security_group_password1" {
  sensitive = true
  value = var.password1
}