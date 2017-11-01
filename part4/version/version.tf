variable "region" {}

provider "aws" {
  version = "~> 0.1"
  region  = "${var.region}"
}

provider "terraform" {
  required_version = "~> 0.10"
}
