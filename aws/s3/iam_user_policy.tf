resource "aws_iam_user_policy" "iam_user_policy_root" {
  name_prefix = join("", [join("-", ["vault", var.context_appname, var.bucket_prefix, "root"]), "-"])
  user        = aws_iam_user.iam_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:AttachUserPolicy",
          "iam:CreateAccessKey",
          "iam:CreateUser",
          "iam:DeleteAccessKey",
          "iam:DeleteUser",
          "iam:DeleteUserPolicy",
          "iam:DetachUserPolicy",
          "iam:GetUser",
          "iam:ListAccessKeys",
          "iam:ListAttachedUserPolicies",
          "iam:ListGroupsForUser",
          "iam:ListUserPolicies",
          "iam:PutUserPolicy",
          "iam:AddUserToGroup",
          "iam:RemoveUserFromGroup"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
