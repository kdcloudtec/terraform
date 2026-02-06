resource "aws_vpc" "myvpc" {
   cidr_block = "10.0.0.0/16"
   enable_dns_support   = true
   enable_dns_hostnames = true
   tags = {
     terraform = "true"
     Name = "vpc-001"
   }
 }

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "public-subnet-001"
  }
}

# Private Subnet
resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"

  tags = {
    Name = "private-subnet-001"
  }
}