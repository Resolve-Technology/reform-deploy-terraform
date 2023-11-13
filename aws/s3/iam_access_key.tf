resource "aws_iam_access_key" "iam_access_key_root" {
  user = aws_iam_user.iam_user_root.name
}
