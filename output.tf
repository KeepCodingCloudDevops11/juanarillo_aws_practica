output "static_website_endpoint" {
  value = <<-EOT
  Access
  ------
  To access to the static website, please visit the following URL:

  'http://${aws_s3_bucket.juanarillo-aws-practice.website_endpoint}'

    EOT
}