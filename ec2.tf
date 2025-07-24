provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0b2f6494ff0b07a0e"  # ✅ Valid AMI for us-west-1
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance-${count.index + 1}"
  }
}

output "instance_public_ips" {
  value = aws_instance.example[*].public_ip
}
