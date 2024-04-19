provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
}