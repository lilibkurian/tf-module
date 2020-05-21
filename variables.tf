/*
variable modname {}
variable SubnetId {
default = "subnet-xxxxxxxxx"
 description = "The subnet id of a default vpc in the working region"
}
variable SecGroupId {
description = "this variable doesn't have a default value but it is passed from the main code"
}
*/
variable vpcid {
description = "vpc id description"
}

variable nameabc {
  default = "default-value1"
}

variable "password" {
  default = "ABCXYZ"
}

variable "password1" {
  default = "ABCXYZ"
}

locals {
  Env = "Dev"
}

locals {
  tags_sg = {
    Env     = local.Env
    Purpose = "security group for ec2"
  }
}

variable "ingress_ports" {
  #type    = list(map(string))
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["10.0.1.0/32"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["10.0.1.0/32"]
    },
    {
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      cidr_blocks = ["10.0.1.0/32"]
    }
  ]
}

variable "egress_ports" {
  #type    = list(map(string))
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
