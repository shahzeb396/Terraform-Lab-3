output "public_ip" {
  description = "EC2 Public IP Address"
  value       = aws_instance.my_ec2.public_ip
}

output "bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.my_bucket.bucket
}
