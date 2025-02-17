resource "aws_s3_bucket" "juanarillo_aws_practice" {
  bucket = "${local.name}-bucket"
  region = local.aws_region

  tags = {
    Name        = "${local.name}-bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_website_configuration" "juanarillo_aws_practice" {
  bucket = aws_s3_bucket.juanarillo_aws_practice.id

  index_document {
    suffix = "index.html"
  }

}