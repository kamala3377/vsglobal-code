resource "aws_lb_target_group" "vsglobal_tg" {
  name        = "terraform-vsglobal-elb-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vsglobal-vpc.id
}
