#####	Terraform configuration.

terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "git::git@github.com:cites-illinois/terraform-demo.git//part4/terragrunt/foo_app?ref=develop"
  }
}

#####	Application configuration.

#   Specify Amazon machine image to use for EC2 instance(s).
ami = "ami-c5062ba0"

#   Specify number of instances to be configured.
instance_count = "4"

#   Specify Amazon instance type to use for EC2 instance(s).
instance_type = "t2.micro"

#   Specify tag(s) for instance(s).
tags =
  {
  "Environment" = "production"
  "Name"	= "foo_service"
}
