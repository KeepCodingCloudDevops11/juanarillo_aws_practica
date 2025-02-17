resource "aws_s3_bucket" "juanarillo-aws-practice" {
  bucket = "${local.name}-bucket"

  tags = {
    Name        = "${local.name}-bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_website_configuration" "juanarillo-aws-practice" {
  bucket = aws_s3_bucket.juanarillo-aws-practice.id

  index_document {
    suffix = "index.html"
  }

}