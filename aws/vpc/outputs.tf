output "vpc_arn" {
  value = resource.aws_vpc.reform_vpc.arn
}

output "vpc_id" {
  value = resource.aws_vpc.reform_vpc.id
}