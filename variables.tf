variable "region" {
  default = "us-east-1"
}
variable "key_name" {
  default = "localdbtest"
}
variable "vpc_cidr" {
  default = "150.0.0.0/16"

}

variable "subnet1" {
    default = "150.0.1.0/24"
}

#######################
variable "is_local"{
    default = 1
}

#######################

variable "Rsubnet1" {
  default="null"
}
variable "bastion_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
variable "bastion_ami" {
    default = "ami-09d496c26aa745869"
}

variable "instance_sg" {
    default = null
}
variable "Rvpcid" {
  default=null
}