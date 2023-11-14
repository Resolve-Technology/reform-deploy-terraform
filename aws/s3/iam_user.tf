resource "aws_iam_user" "iam_user" {
  name = join("-", ["vault", var.context_appname, var.bucket_prefix, "root"])

  force_destroy = var.force_destroy
}
