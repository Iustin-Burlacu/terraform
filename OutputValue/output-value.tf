provider "aws" {
  region     = "us-east-1"
}

output "public-ip" {
  value = aws_eip.lb.public_ip
}

output "public-ip" {
  value = "https://${aws_eip.lb.public_ip}:8080"
}

output "public-ip-all-info" {
  value = aws_eip.lb
}