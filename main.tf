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
/*
module "sg" {
  #source           = "./sg"
  #source           = "github.com/lilibkurian/terraform-aws-sg"
  #source           = "github.com/lilibkurian/terraform-aws-sgtest"
  #source           = "github.com/lilibkurian/tf-module/sg"  # tree/develop/sg
  #source           = "github.com/lilibkurian/terraform-aws-sg?ref=v1.0.7"
  #source           = "git::https://gitlab.com/lilibkurian/terraform-aws-test.git"
  #source           = "git@gitlab.com:lilibkurian/terraform-aws-test.git?ref=v1.0.1"
  #source           = "git::git@gitlab.com:cext-cloud-group/terraform-aws-iam-saml.git?ref=v1.0.1"
  #source           = "git@gitlab.com:lilib.kurian/terraform-aws-sg.git?ref=v1.0.6"
  #source           = "git@gitlab.com:lilib.kurian/terraform-aws-sg.git"
  #source           = "gitlab.com/lilib.kurian/terraform-aws-sg"
  #--source         = "git@github.com:lilibkurian/terraform-aws-sgtest.git"
  #source           = "git::https://gitlab.com/cext-cloud-group/iac/tf/tf-modules/iam.git"
  #source           = "gitlab.com/cext-cloud-group/iac/tf/tf-modules/iam"
  source            = "git::https://gitlab.com/lilib.kurian/terraform-aws-testpqr.git"
  #source           = "git::https://gitlab.com/lilibkurian/terraform-aws-test.git"

  #git::https://example.com/vpc.git
//https://gitlab.com/lilib.kurian/terraform-aws-testpqr.git
//git@gitlab.com:cext-cloud-group/terraform-iam-module.git

# git::https://gitlab.com/cext-cloud-group/iac/tf/tf-modules/iam.git//iam-user
  sg_name          = "Test-SG how is it going6"
  sg_desc          = var.nameabc
  sg_tags          = local.tags_sg

  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports
}
*/


module "sg" {
  source  = "app.terraform.io/Lilib/sg/aws"
  version = "1.0.2"

  sg_name          = "Test-SG how is it going-12"
  sg_desc          = var.nameabc
  sg_tags          = local.tags_sg

  sg_vpcid         = var.vpcid
  sg_ingress_ports = var.ingress_ports
  sg_egress_ports  = var.egress_ports

}


