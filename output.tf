output "static_website_endpoint" {
  value = <<-EOT

  Access
  ------
  To access to the static website, please visit the following URL:

  http://${aws_s3_bucket_website_configuration.juanarillo-aws-practice.website_endpoint}

    EOT
}