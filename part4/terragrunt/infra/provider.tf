provider "aws" {
  region = "us-east-2"
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}
