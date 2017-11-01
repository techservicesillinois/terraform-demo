# This example defines an Amazon EC2 instance (virtual server).
#
# The caller must specify AWS credentials.
#
# The caller must specify values for following variables:
# 
# ami             Amazon machine image to use.
# instance_count  Number of instances. (Defaults to 1.)
# instance_type   Instance type

provider "aws" {
  region = "us-east-2"
}

# Define the Amazon machine image (AMI) to use.
variable "ami" {
  description = "Amazon machine image"
}

# Define the number of instances to use.
variable "instance_count" {
  default     = "1"
  description = "Number of instances"
}

# Define the instance type to use.
variable "instance_type" {
  description = "Amazon instance type"
}

# Define the Amazon machine image (AMI) to use.
variable "tags" {
  description = "Map of tags for instance(s)"
  type        = "map"
}

/* A multi
   line comment. */

resource "aws_instance" "web" {
  ami           = "${var.ami}"
  count         = "${var.instance_count}"
  instance_type = "${var.instance_type}"
  tags          = "${var.tags}"
}
