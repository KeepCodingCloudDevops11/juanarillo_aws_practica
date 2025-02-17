resource "aws_s3_object" "index.html" {
  bucket       = aws_s3_bucket.juanarillo_aws_practice.bucket
  key          = "index.html"
  content_type = "text/html"
  content      = <<EOF
  <!DOCTYPE html>
  <html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Práctica AWS - Juan Arillo</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f4f4f4;
        padding: 50px;
      }
      h1 {
        color: #333;
      }
    </style>
  </head>
  <body>
    <h1>Práctica del módulo AWS de Juan Arillo</h1>
    <p>Despliegue con Terraform</p>
  </body>
  </html>
  EOF
  acl          = "public-read"

}