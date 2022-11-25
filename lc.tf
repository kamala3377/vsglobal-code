resource "aws_launch_configuration" "as_conf" {
  name                        = "lc-asg"
  image_id                    = aws_ami_from_instance.ami.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.my_sg.id]
  key_name                    = "vsglobal-ec2-key"

}
