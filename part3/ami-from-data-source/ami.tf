# This example uses a Terraform data source to derive an Amazon machine
# image (AMI).
#
# The aws_ami data source supports optional filter blocks (one or more
# of which may be specified). These filters are used to limit the results
# returned by the data source.
#
# The caller must specify AWS credentials.

provider "aws" {}

data "aws_ami" "amazon_linux" {
  most_recent = "true"
  owners      = ["amazon"]

  # filter {
  #   name   = "root-device-type"
  #   values = ["ebs"]
  # }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

output "amazon_linux_desc" {
  value = "${data.aws_ami.amazon_linux.description}"
}

output "amazon_linux_id" {
  value = "${data.aws_ami.amazon_linux.id}"
}

output "amazon_linux_name" {
  value = "${data.aws_ami.amazon_linux.name}"
}
