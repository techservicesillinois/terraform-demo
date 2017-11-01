# This example Creates Amazon virtual private clouds in two regions.
#
# The caller must specify AWS credentials. The regions and their aliases
# are baked into the provider in this example.

#   Resource for VPC in North America.
resource "aws_vpc" "vpc_na" {
  cidr_block = "10.0.0.0/27"
  provider   = "aws.north-america"
}

#   Resource for VPC in Europe.
resource "aws_vpc" "vpc_europe" {
  cidr_block = "10.0.0.0/27"
  provider   = "aws.europe"
}
