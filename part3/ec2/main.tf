# This example creates an AWS security group and AWS EC2 instance
# (virtual machine). The defined security group is attached to the EC2
# instance.
#
# The caller must specify AWS credentials.
#
# The caller must specify values for following variables:
#
# ami             Amazon machine image to use.
# instance_type   Instance type

# This security group allows inbound SSH traffic from everywhere to
# the EC2 instance, and allows outbound traffic from the EC2 instance
# to all protocols and all ports.

resource "aws_security_group" "default" {
  name        = "allow_ssh"
  description = "Allow inbound traffic to port 22"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# This EC2 instance is created, with the aforementioned AWS security group
# attached.

resource "aws_instance" "default" {
  ami             = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.default.name}"]

  tags {
    Name = "example"
  }
}
