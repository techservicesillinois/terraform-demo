variable "base" {
  description = "Base"
}

variable "exponent" {
  description = "Exponent"
}

output "debug_output" {
  value = "base: ${var.base} | exponent: ${var.exponent}"
}

output "result" {
  value = "${pow(var.base,var.exponent)}"
}
