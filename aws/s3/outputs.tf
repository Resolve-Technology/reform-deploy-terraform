output "bucket_name" {
  value = aws_s3_bucket.s3_bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}

output "bucket_region" {
  value = aws_s3_bucket.s3_bucket.region
}

output "access_key" {
  value = aws_iam_access_key.iam_access_key.id
}

output "secret_key" {
  value     = aws_iam_access_key.iam_access_key.secret
  sensitive = true
}
