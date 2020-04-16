resource "aws_vpc" "aws_obj" {
    count=var.is_local
    cidr_block = var.vpc_cidr
    tags = {Name=var.key_name}
    }

resource "aws_internet_gateway" "aws_obj" {
    count=var.is_local
    vpc_id = aws_vpc.aws_obj[0].id
    tags = {Name=var.key_name}
    depends_on = [aws_vpc.aws_obj]
    }
resource "aws_eip" "testEip1" {
    count=var.is_local
    vpc=true
    public_ipv4_pool="amazon"
    }
resource "aws_subnet" "awsobj1ta" {
  count=var.is_local
  vpc_id     = aws_vpc.aws_obj[0].id
  cidr_block = var.subnet1
  tags = {Name=var.key_name}
  availability_zone="us-east-1a"
}


####
locals {
    lsubA= var.is_local == 1 ? aws_subnet.awsobj1ta[0].id : null

    lvpc= var.is_local == 1 ? aws_vpc.aws_obj[0].id : null
    }
####





