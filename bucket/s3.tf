provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "github-bucket-kdcloudtec"
  force_destroy = true

  tags = {
    Name = "github-bucket-kdcloudtec"
  }
}
