# This example creates an AWS IAM policy using the aws_iam_policy_document
# data source. That data source is evaluated, and its json attribute is
# interpolated into the policy document. This is the preferred option in
# terms of readability.
#
# The caller must specify AWS credentials.

provider "aws" {}

data "aws_iam_policy_document" "policy" {
  statement {
    actions = [
      "ec2:Describe*",
    ]

    # The "Allow" effect is the default and doesn't need to be specified.
    resources = ["*"]
  }
}

resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  description = "This is the best way"
  policy      = "${data.aws_iam_policy_document.policy.json}"
}
