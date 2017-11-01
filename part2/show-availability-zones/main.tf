# This example uses a Terraform data source to return a list of Amazon
# availability zones within the current region that are currently available.
#
# The caller must specify AWS credentials and the region.

provider "aws" {}

data "aws_availability_zones" "available" {
  state = "available"
}

output "az_available" {
  value = "${data.aws_availability_zones.available.names}"
}
