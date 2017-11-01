#   Output the id from each of the VPCs.
output "vpc_na_id" {
  value = "${aws_vpc.vpc_na.id}"
}

output "vpc_europe_id" {
  value = "${aws_vpc.vpc_europe.id}"
}
