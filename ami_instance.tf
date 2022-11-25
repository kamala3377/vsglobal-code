resource "aws_ami_from_instance" "ami" {
  name               = "terraform-ami-lc"
  source_instance_id = "i-018191a94906c5716"
}
