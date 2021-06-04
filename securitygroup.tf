resource "aws_security_group" "bhanu-docker-sg" {
  vpc_id = aws_vpc.Bhanu-main.id
  name = "bhanu-docker-sg"
  description = "security group that allows ssh and tcp  and all egress traffic"
  egress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  } 
  ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
  Name = "bhanu-docker-sg"
  } 
}
