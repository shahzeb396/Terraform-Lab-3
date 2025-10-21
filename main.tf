provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-04c08fd8aa14af291" # Amazon Linux 2 AMI (Stockholm)
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
