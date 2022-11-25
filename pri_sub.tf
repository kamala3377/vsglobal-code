resource "aws_subnet" "subnet1" {
  cidr_block = "10.0.2.0/24"
  vpc_id     = aws_vpc.vsglobal-vpc.id
  tags = {
    Name = "Vsglobal-Public-Subnet-03"
  }
}

