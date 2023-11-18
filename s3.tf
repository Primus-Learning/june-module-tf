resource "aws_s3_bucket" "frontend" {
  bucket = "frontend-console-${local.common_tag}"
  force_destroy = true
  tags = {
    Team = local.Team
    Environment = local.Environment
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.frontend.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }

}