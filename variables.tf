variable "cidr" {
  type = string
}

variable "region" {
  type = string
}

variable "subnet_cidr_public" {
  type = list(string)
}

variable "subnet_cidr_private" {
  type = list(string)
}

variable "vpc_name" {
  type = string
}

variable "app_port" {
  type = number
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}