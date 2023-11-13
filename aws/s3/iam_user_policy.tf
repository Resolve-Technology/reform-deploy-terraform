resource "aws_iam_user_policy" "iam_user_policy_root" {
  name_prefix = join("", [join("-", [var.context_appname, var.bucket_prefix, "root"]), "-"])
  user        = aws_iam_user.iam_user_root.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:CreateAccessKey",
          "iam:DeleteAccessKey",
          "iam:ListAccessKeys",
          "iam:UpdateAccessKey"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user_policy" "iam_user_policy" {
  name_prefix = join("", [join("-", [var.context_appname, var.bucket_prefix]), "-"])
  user        = aws_iam_user.iam_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject"
        ]
        Effect   = "Allow"
        Resource = join("/", [aws_s3_bucket.s3_bucket.arn, "*"])
      },
    ]
  })
}
