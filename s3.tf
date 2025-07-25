resource "aws_s3_bucket" "my_bucket" {
  bucket = "Eric-s3-bucket"  # Replace with a globally unique name
 
  tags = {
    Name = "My S3 Bucket"
  }
}