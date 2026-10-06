resource "aws_lb" "example" {
  name               = "example"
  internal           = true
  load_balancer_type = "network"

  subnet_mapping {
    subnet_id = "12345"
  }
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-west-2a"

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}
