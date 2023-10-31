provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "arandombucketname138532110"
}

# delete all files from the bucket
resource "null_resource" "delete_all_files" {
  provisioner "local-exec" {
    command = "aws s3 rm s3://${aws_s3_bucket.my_bucket.id} --recursive"
  }
}
