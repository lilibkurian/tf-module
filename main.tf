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
#https://github.com/lilibkurian/tf-module/tree/master/sg

module "sg" {
  #source           = "./sg"
  #source          = "github.com/lilibkurian/terraform-aws-sg"
  #source          = "github.com/lilibkurian/tf-module/sg"  # tree/develop/sg
  #source          =  "github.com/lilibkurian/terraform-aws-sg?ref=v1.0.7"
  source           = "gitlab.com/lilibkurian/terraform-aws-test?ref=v1.0.1"
  
  #github.com/lilibkurian/terraform-aws-sg.git
  #version          = "v1.0.2"
  sg_name          = "Test-SG how is it going6"
  sg_desc          = var.nameabc
  sg_tags          = local.tags_sg

  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports
}

/*
module "sg" {
  source  = "app.terraform.io/Lilib/sg/aws"
  version = "1.0.2"

  sg_name          = "Test-SG how is it going3"
  sg_desc          = var.nameabc
  sg_tags          = local.tags_sg

  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports

}
*/


