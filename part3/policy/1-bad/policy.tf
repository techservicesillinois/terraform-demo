# This example creates an AWS IAM policy using inline JSON to supply
# the policy document. This is the least-preferred option in terms of
# readability.
#
# The caller must specify AWS credentials and an AWS region.

provider "aws" {}

resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = "This is not the recommended way"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
