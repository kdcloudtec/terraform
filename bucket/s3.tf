provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "new-github-bucket-kdcloudtec"
  force_destroy = true

  tags = {
    Name = "new-github-bucket-kdcloudtec"
  }
}
