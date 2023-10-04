resource "aws_s3_bucket" "reform_s3" {
  bucket = var.bucket_name
  
  tags = {
    Name = var.bucket_name
    managed-by = "Terraform"
  }
}