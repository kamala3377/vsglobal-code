resource "aws_autoscaling_group" "bar" {
  name                      = "VSGLOBAL-ASG-EC2"
  max_size                  = 0
  min_size                  = 0
  health_check_grace_period = 100
  health_check_type         = "ELB"
  desired_capacity          = 0
  launch_configuration      = aws_launch_configuration.as_conf.name
  vpc_zone_identifier       = [aws_subnet.sub1.id, aws_subnet.sub2.id]
  load_balancers            = [aws_elb.elb_demo.id]
  tag {
    key                 = "Name"
    value               = "VSGLOBAL-ASG-EC2"
    propagate_at_launch = true
  }
}
