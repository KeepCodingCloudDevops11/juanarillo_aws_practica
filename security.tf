resource "aws_s3_bucket_public_access_block" "juanarillo-public-access" {
  bucket                  = aws_s3_bucket.juanarillo-aws-practice.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "juanarillo-public-read" {
  bucket = aws_s3_bucket.juanarillo-aws-practice.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.juanarillo-aws-practice.arn}/*"
      }
    ]
  })
}