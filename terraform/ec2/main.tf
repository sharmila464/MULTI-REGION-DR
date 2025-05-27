resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Use your preferred AMI ID here
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}
