output "public_ip" {
  value = "${aws_instance.default.public_ip}"
}
