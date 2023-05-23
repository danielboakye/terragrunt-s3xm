resource "aws_s3_object" "my_object" {
  bucket = var.bucket_name
  key    = var.object_key
  source = var.object_source
}

variable "bucket_name" {}
variable "object_key" {}
variable "object_source" {}
