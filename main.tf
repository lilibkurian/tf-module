/*
resource "aws_elb" "mybalancer" {
name = "${var.modname}"

subnets         = ["${var.SubnetId}"]
security_groups = ["${var.SecGroupId}"]


listener {
   instance_port     = 80
   instance_protocol = "http"
   lb_port           = 80
   lb_protocol       = "http"
 }

}
*/


module "sg" {
  source           = "./sg"
  sg_name          = "Test-SG"
  sg_desc          = "Hi SG"
  sg_vpcid         = "vpc-2df86557"
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports
} */