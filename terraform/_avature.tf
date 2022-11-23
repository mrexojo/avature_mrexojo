###############################################################################
#                                                                             #
#                        Please don't edit this file.                         #
#                                     ಠ_ಠ                                     #
#                                                                             #
###############################################################################

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Main"
  }

}

resource "aws_subnet" "nlp" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "NLP"
  }

}

resource "aws_security_group" "tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }

}