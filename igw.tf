resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vsglobal-vpc.id

  tags = {
    Name = "Vsglobal-IGW"
  }
}
