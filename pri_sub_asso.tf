resource "aws_route_table_association" "pri_asso" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.pri_rt.id
}

