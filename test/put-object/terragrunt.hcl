include "root" {
  path   = find_in_parent_folders()
}

dependency "create_bucket" {
  config_path = "../create-bucket"
}

terraform {
  source = "../../modules/s3_object"
}

inputs = {
  bucket_name = dependency.create_bucket.outputs.bucket_name
  object_key = "example.txt"
  object_source = "example.txt"
}