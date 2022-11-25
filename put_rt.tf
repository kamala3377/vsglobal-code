resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.vsglobal-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "Vsglobal_Pub_route_table"
  }
}
