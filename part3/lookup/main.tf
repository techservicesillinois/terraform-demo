# This example does not use any resources or data sources and simply
# shows an example of interpolation using the lookup() operator.
#
# This example creates no infrastructure; as a result, no cloud provider
# credentials are required.
#
# The caller must specify values for following variables:
# 
# app         Name of application.
# domain      Name of domain.
# env         Environment (production, qa, test, etc.).
# suffix      A map containing a key/value pair for environments and
#             their respective suffixes (which can be the empty string).

variable "app" {
  description = "application name"
}

variable "domain" {
  description = "DNS domain"
}

variable "env" {
  description = "environment (production, qa, test, etc.)"
}

variable "suffix" {
  type = "map"
}

# Output the hostname interpolated from the variables.

output "hostname" {
  value = "${var.app}${lookup(var.suffix, var.env)}.${var.domain}"
}
