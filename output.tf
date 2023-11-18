output instance_public_ip {
  value       = aws_instance.web.public_ip
  description = "instance public ip"
}

output cloudfront_id {
  value       = aws_cloudfront_distribution.s3_distribution.id
  description = "cloufront distro id"
}
