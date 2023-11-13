resource "aws_s3_bucket" "s3_bucket" {
  bucket_prefix = var.bucket_prefix

  force_destroy = var.force_destroy
}
