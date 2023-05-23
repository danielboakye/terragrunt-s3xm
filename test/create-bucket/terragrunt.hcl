include "root" {
  path   = find_in_parent_folders()
}

terraform {
  source = "../../modules/s3_bucket"
}

inputs = {
  bucket_name = "my-tf-test-bucket-name"
}