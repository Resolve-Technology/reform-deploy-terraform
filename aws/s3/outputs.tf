output "bucket_name" {
  value = aws_s3_bucket.s3_bucket.id
}

output "bucket_region" {
  value = aws_s3_bucket.s3_bucket.region
}

output "vault_root_access_key" {
  value = aws_iam_access_key.iam_access_key_root.id
}

output "vault_root_secret_key" {
  value     = aws_iam_access_key.iam_access_key_root.secret
  sensitive = true
}

output "vault_iam_user" {
  value = aws_iam_user.iam_user.name
}
