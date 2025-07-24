provider "aws" {
  region = "us-west-1"
}

# EC2 instances
resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0a0409af1cb831414"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance-${count.index + 1}"
  }
}

# Output the public IPs of the instances
output "instance_public_ips" {
  value = aws_instance.example[*].public_ip
}
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with valid AMI for your region
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
