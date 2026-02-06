provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "github-actions-bucket-kdcloudtec"

  tags = {
    Name = "github-actions-bucket-kdcloudtec"
  }
}
