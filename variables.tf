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
description = "vpc id"
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
      from_port   = "All"
      to_port     = "All"
      protocol    = "-1"
      cidr_blocks = ["10.0.1.0/32"]
    }
  ]
}
