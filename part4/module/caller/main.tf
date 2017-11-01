# This calls the module with base 10 and exponent 3.

module "1k" {
  base     = "10"
  exponent = "3"
  source   = "github.com/cites-illinois/terraform-demo/part4/module/power"
}

# This calls the module with base 10 and exponent 6.

module "1m" {
  base     = "10"
  exponent = "6"
  source   = "github.com/cites-illinois/terraform-demo/part4/module/power"
}

output "1k" {
  value = "${floor(module.1k.result)}"
}

output "1m" {
  value = "${floor(module.1m.result)}"
}
