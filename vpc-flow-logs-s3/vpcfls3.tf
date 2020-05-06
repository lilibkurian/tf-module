provider "aws" {
  #alias = "dev"

  region     = "us-east-1"
  access_key = "AKIAXBLXXOWWF5I7OK6Q"
  secret_key = "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"
}

resource "aws_flow_log" "vpcflowlog" {

  #provider             = "${var.vfl_s3_provider}"
  log_destination      = "${var.vfl_s3_log_destination}"
  log_destination_type = "${var.vfl_s3_log_destination_type}"
  traffic_type         = "${var.vfl_s3_traffic_type}"
  vpc_id               = "${var.vfl_s3_vpc_id}"
  log_format           = "${var.vfl_s3_log_format}"

  #depends_on = ["aws_s3_bucket.centralized-logging"]
}
