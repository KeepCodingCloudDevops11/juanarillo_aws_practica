resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.juanarillo-aws-practice.bucket
  key          = "index.html"
  source       = "./site/index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.juanarillo-aws-practice.bucket
  key          = "style.css"
  source       = "./site/style.css"
  content_type = "text/css"
}