resource "aws_iam_user" "iam_user" {
  name = join("-", ["vault", var.context_name, "root"])

  force_destroy = var.force_destroy
}
