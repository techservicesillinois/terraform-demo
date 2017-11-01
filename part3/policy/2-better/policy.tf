# This example creates an AWS IAM policy. The JSON policy file is stored
# in the module directory, and is loaded into the resource via
# interpolation. This is preferred over the "here document" in terms of
# readability. However, a still-better way of defining the policy exists.
#
# The caller must specify AWS credentials.

provider "aws" {}

resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  description = "This is a better way"
  policy      = "${file("${path.module}/policy.json")}"
}
