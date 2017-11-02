# This example uses the Terraform ${count.index} interpolation to
# create an arbitrary number of Amazon EC2 (virtual machine) instances.
#
# The number of instances depends on the length of the list
# variable ${var.name}. Each instance is created with tags, some of which
# are derived from ${var.name}.
#
# The caller must specify AWS credentials.
#
# The caller must specify values for following variables:
# 
# ami             Amazon machine image to use.
# instance_type   Instance type

provider "aws" {
  region = "us-east-2"
}

variable "name" {
  default = [
    "Moe",
    "Larry",
    "Curly",
  ]

  # "Shemp",
}

resource "aws_instance" "app" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  count         = "${length(var.name)}"

  tags {
    Index = "${count.index + 1}"
    Name  = "${element(var.name, count.index)}"
    Type  = "Stooge"
  }
}
