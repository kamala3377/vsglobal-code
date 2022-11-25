resource "aws_route_table" "pri_rt" {
  vpc_id = aws_vpc.vsglobal-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id
  }
  tags = {
    Name = "vsglobal_private_rt_table"
  }
}

