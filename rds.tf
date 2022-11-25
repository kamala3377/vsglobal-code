resource "aws_db_instance" "vsglobal_db" {
  allocated_storage   = 10
  db_name             = "mydb"
  engine              = "mysql"
  engine_version      = "8.0.28"
  instance_class      = "db.t2.micro"
  username            = "admin"
  password            = "Newpassword25"
  skip_final_snapshot = true
  tags = {
    Name = "rds-mysql"
  }
}
