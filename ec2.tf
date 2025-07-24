provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your region's valid AMI if needed
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance-${count.index + 1}"
  }
}

output "instance_public_ips" {
  value = aws_instance.example[*].public_ip
}
