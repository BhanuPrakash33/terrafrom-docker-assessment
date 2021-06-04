resource "aws_instance" "Bhanu-DOCKER" {
  ami = var.AMIS[var.AWS_REGION]

  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.Bhanu-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.bhanu-docker-sg.id]

  # the public SSH key
  key_name = aws_key_pair.Bhanu-mykeypair.key_name

  tags = {
      Name = "Bhanu-DOCKER"
  }


}
