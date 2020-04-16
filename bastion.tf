
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.bastion_key
}
resource "aws_security_group" "objawssec1" {
name = "ec2bastionrules"
description = "ec2 bastion host SG"
vpc_id = lookup({1=local.lvpc,0=var.Rvpcid}, var.is_local,"")
ingress {
description = "rdp"
from_port = 3389
to_port = 3389
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}

resource "aws_instance" "bastion" {
  ami           = var.bastion_ami
  instance_type = "t2.micro"
  subnet_id=lookup({1=local.lsubA,0=var.Rsubnet1},var.is_local,"")
  security_groups=[
                  aws_security_group.objawssec1.id
                  ]
  key_name="terraform_test"
  associate_public_ip_address=true
  root_block_device{
  volume_type = "gp2"
  volume_size = "32"
  }
    tags= {Name=var.key_name}
  }

