resource "aws_iam_user" "iam_user_root" {
  name = join("-", [var.context_appname, var.bucket_prefix, "root"])

  force_destroy = var.force_destroy
}

resource "aws_iam_user" "iam_user" {
  name = join("-", [var.context_appname, var.bucket_prefix])

  force_destroy = var.force_destroy
}
