locals {
  web_port = ( var.v_sg_web_port != "" ? var.v_sg_web_port : 443 )
}


resource "aws_security_group" "r_sg" {
  name        = "allow_web_80"
  description = "Allow traffic to port 80"
  vpc_id      = aws_vpc.r_terraform_vpc.id

  ingress {
    description      = "web port 80"
    from_port        = local.web_port
    to_port          = local.web_port
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.r_terraform_vpc.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web_80"
  }
}