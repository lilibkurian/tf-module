resource "aws_security_group" "example" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = var.sg_vpcid
  tags        = var.sg_tags

  dynamic "ingress" {
    for_each = toset(var.sg_ingress_ports)
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = toset(var.sg_egress_ports)
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}
