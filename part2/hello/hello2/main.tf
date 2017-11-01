# This example uses a Terraform data source to render a template.
# The template is provided by a file path interpolated by Terraform.
#
# This example creates no infrastructure; as a result, no cloud provider
# credentials are required.
#
# The caller must specify values for following variables:
# 
# greeting        Greeting (e.g., "Hello").
# whom            Name of greeting recipient (e.g., "World").

data "template_file" "example" {
  template = "${file("${path.module}/template.txt")}"

  vars {
    greeting = "${var.greeting}"
    whom     = "${var.whom}"
  }
}

output "rendered" {
  value = "${data.template_file.example.rendered}"
}
