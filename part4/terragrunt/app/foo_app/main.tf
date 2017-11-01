# Define the Amazon machine image (AMI) to use.
variable "ami" {
  description = "Amazon machine image"
}

# Define the number of instances to use.
variable "instance_count" {
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

module "foo" {
  source         = "git::git@github.com:cites-illinois/terraform-demo//part2/ec2?ref=develop"
  ami            = "${var.ami}"
  instance_count = "${var.instance_count}"
  instance_type  = "${var.instance_type}"
  tags           = "${var.tags}"
}
