output "bucket_arn" {
  value = resource.aws_s3_bucket.reform_bucket.arn
}

output "bucket_id" {
  value = resource.aws_s3_bucket.reform_bucket.id
}