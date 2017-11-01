#   Specify Amazon Linux as machine image to use for EC2 instance(s).
ami = "ami-c5062ba0"

#   Specify number of instances to be configured.
instance_count = "2"

#   Specify Amazon instance type to use for EC2 instance(s).
instance_type = "t2.nano"

#   Specify tag(s) for instance(s).
tags =
  {
  "Environment" = "test"
  "Name"	= "sample"
}
