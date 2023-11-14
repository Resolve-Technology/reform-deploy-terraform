resource "aws_iam_access_key" "iam_access_key" {
  user = aws_iam_user.iam_user.name
}
