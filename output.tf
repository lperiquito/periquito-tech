output "cloudfront_name" {
  value = aws_cloudfront_distribution.main_s3_distribution.domain_name
}
