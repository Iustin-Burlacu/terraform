provider "aws" {
  region     = "us-east-1"
}

# elastic ip resource
resource "aws_eip" "elastic_ip" {
  domain   = "vpc"
}

# security group resource (firewall)
resource "aws_security_group" "allow_tls" {
  name        = "attribute-firewall"
}

# inbounded rule resource on firewall
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4   = "${aws_eip.elastic_ip.public_ip}/32"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}