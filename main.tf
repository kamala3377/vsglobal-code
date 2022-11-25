resource "aws_vpc" "vsglobal-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "vsglobal-terraform-vpc"
  }
}
resource "aws_subnet" "sub1" {
  vpc_id            = aws_vpc.vsglobal-vpc.id
  cidr_block        = var.sub1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "vsglobal-Public-Subnet-1"
  }
}

resource "aws_subnet" "sub2" {
  vpc_id            = aws_vpc.vsglobal-vpc.id
  cidr_block        = var.sub2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "vsglobal-Public-Subnet-2"
  }
}
resource "aws_subnet" "sub3" {
  vpc_id            = aws_vpc.vsglobal-vpc.id
  cidr_block        = var.sub3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "Public-Subnet-3"
  }
}

resource "aws_instance" "vsglobal_web_server1" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "vsglobal-ec2-key"
  vpc_security_group_ids      = [aws_security_group.my_sg.id]
  subnet_id                   = aws_subnet.sub1.id
  user_data                   = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
sudo yum update -y
udo yum install httpd -y
  echo "<h1>Welcome Terraform through VSGLOBAL-EC2</h1>">/var/www/html/index.html
  sudo chkconfig httpd on
 sudo service httpd start
  EOF

  tags = {
    Name = "vsglobal-web-server1"
  }
}

