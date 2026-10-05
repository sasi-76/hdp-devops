resource "aws_cloud9_environment_ec2" "example" {
  instance_type = "t2.micro"
}

data "aws_instance" "cloud9_instance" {
  filter {
    name = "tag:aws:cloud9:environment"
    values = [
    aws_cloud9_environment_ec2.example.id]
  }
}