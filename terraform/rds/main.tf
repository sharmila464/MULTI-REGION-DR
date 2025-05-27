resource "aws_db_subnet_group" "default" {
  name       = "primary-db-subnet-group"
  subnet_ids = [aws_subnet.public_subnet.id]

  tags = {
    Name = "Primary DB Subnet Group"
  }
}

resource "aws_db_instance" "primary" {
  identifier         = "primary-rds"
  allocated_storage  = 20
  engine             = "mysql"
  engine_version     = "8.0"
  instance_class     = "db.t3.micro"
  name               = "mydb"
  username           = "admin"
  password           = "YourPasswordHere"
  db_subnet_group_name = aws_db_subnet_group.default.name
  skip_final_snapshot = true

  tags = {
    Name = "Primary RDS Instance"
  }
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main-vpc"
  }
}
