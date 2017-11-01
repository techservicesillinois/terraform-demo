#   Provider for AWS region in North America.
provider "aws" {
  alias  = "north-america"
  region = "ca-central-1"
}

#   Provider for AWS region in Europe.
provider "aws" {
  alias  = "europe"
  region = "eu-central-1"
}
