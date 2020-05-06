/*
resource "aws_elb" "mybalancer" {
name = "var.modname"

subnets         = [var.SubnetId]
security_groups = [var.SecGroupId]


listener {
   instance_port     = 80
   instance_protocol = "http"
   lb_port           = 80
   lb_protocol       = "http"
 }

}
*/

locals {
  tags_sg {
    Name = "test"
  }
}


module "sg" {
  source           = "./sg"
  sg_name          = "Test-SG how is it going"
  sg_desc          = "Hi SG"
  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports
  sg_tags          = local.tags_sg
} 