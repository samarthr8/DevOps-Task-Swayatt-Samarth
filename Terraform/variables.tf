variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "devops-task-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "sg_name" {
  type    = string
  default = "ssh-sg"
}

variable "sg_ingress_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "key_name" {
  type    = string
  default = "ssh-key"
}

variable "public_key" {
  type        = string
  description = "Public key for SSH access"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8LOclzkivg5mXNcNFlZwbguWxQbZjxNXY4K/gI8paZhqapgZgAfi8cAbCakNgME55CkFV1fHtL7SMkoSsi/38+afJ1yZzYMBL+jwfiXPZM6Azp4gEcNmau32QVAt1uD0wZanOq0dqj6eLh0WkPaEckeIHOeGAhxOzqxWLUaejHmtrMLpMyxJeNe3Zq0noQmTOn2lQRF3O1ELGGq8GScabAFjq22wU1mL/ExRBYkKaKQFf8m4DBJpfRI1Ldub4bsZvybNJ5BSXdfK4Pkuk3y4WwNz7TLLzKWUkcjz1BY+TDNvCC65fa6V4noYtRLxDtlC5DQIqOw45UlISCFPZK/9TQGq+2kCH9VIMfBf4jF9L5BTOfUPQHHz/iASmHuqw3P8lA4K5zxd/ywN3v5wSyFeuWlblYKztN78w3CqCEwN8oOrmeV9g+SzhOowmqLsXbF8v+T0i/U/kRRnoeHVCj84Y8WLpQZyl2rFgjTDk9oa+QeqEM9FjnfhZ0Dy/5c+IjHM= samarth@samarth-HP-Pavilion-Notebook-PC"
}

variable "ami_id" {
  type    = string
  default = "ami-0bbdd8c17ed981ef9"
}

variable "instance_type" {
  type    = string
  default = "t2.small"
}

variable "instance_name" {
  type    = string
  default = "devops-task-ec2"
}

