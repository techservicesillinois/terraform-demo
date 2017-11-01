# Ids for multiple sets of EC2 instances, merged together
locals {
  kilobyte = "${floor(pow(10,  3))}"
  megabyte = "${floor(pow(10,  6))}"
  gigabyte = "${floor(pow(10,  9))}"
  terabyte = "${floor(pow(10, 12))}"
}

output "kilobyte" {
  value = "${local.kilobyte}"
}

output "megabyte" {
  value = "${local.megabyte}"
}

output "gigabyte" {
  value = "${local.gigabyte}"
}

output "terabyte" {
  value = "${local.terabyte}"
}
