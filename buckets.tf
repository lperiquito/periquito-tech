resource "aws_s3_bucket" "tfstate" {
  bucket = var.state_bucket_name

  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = false
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "tech-site" {
  bucket = var.bucket_name
  acl    = "public-read"

  policy = file("policy.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

