variable "vpn_ip" {
  default = "10.0.0.0/32"    # default value replaced with value if present in *.tfvars
  description = "This is a vpn server created in aws"
}

variable "ssh_port" {}

variable "ftp_port" {}

variable "app_port" {}