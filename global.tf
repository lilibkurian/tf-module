provider "aws" {
  version                 = "~> 2.0"
  region                  = var.aws_region
  shared_credentials_file = var.aws_cred_file
  profile                 = terraform.workspace

}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "To which region should the resources be deployed? ie us-east-1, us-west-2, etc"
}

variable "aws_cred_file" {}