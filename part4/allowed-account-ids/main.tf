# This example creates an AWS EC2 instance (virtual machine). The inclusion
# of the  "allowed_account_ids" parameter in the provider block causes
# Terraform to check the AWS account number in the caller's credentials
# against the account numbers specified in the "allowed_account_ids" list.
#
# The intent of this feature is to prevent infrastructure from being
# managed by the wrong AWS account.
#
# The caller must specify AWS credentials.
#
# The caller must specify values for following variables:
# 
# ami             Amazon machine image to use.
# instance_type   Instance type

# Specify the provider with allowed_account_ids.
provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = ["0123456789"]
}

# Define the Amazon machine image (AMI) to use.
variable "ami" {
  description = "Amazon machine image"
}

# Define the instance type to use.
variable "instance_type" {
  description = "Amazon instance type"
}

/* A multi
   line comment. */

resource "aws_instance" "web" {
  ami           = "${var.ami}"
  count         = 2
  instance_type = "${var.instance_type}"

  tags {
    Name = "example"
  }
}
