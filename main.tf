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
module "sg" {
  #source           = "./sg"
  source            = "git@github.com:lilibkurian/terraform-aws-sg.git"
  #github.com/lilibkurian/terraform-aws-sg.git
  sg_name          = "Test-SG how is it going2"
  sg_desc          = var.nameabc

  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports
} 

/*
module "sg" {
  source  = "app.terraform.io/Lilib/sg/aws"
  version = "1.0.0"
}
*/


