variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_default_region" {
  default = "eu-central-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_ami" {
  default = "ami-04e601abe3e1a910f"
}

variable "domain" {
  default = "kestrelvpn.xyz"
}
