# EC201 avature-service-1 instance
resource "aws_instance" "EC201" {
  ami                    = var.EC201["ami_id"]
  instance_type          = var.EC201["instance_type"]
  key_name               = var.EC201["key_name"]
  vpc_security_group_ids = [aws_security_group.tls.id]
  subnet_id              = aws_subnet.nlp.id

  tags = local.EC201.tags

}

# EC202 avature-service-2 instance
resource "aws_instance" "EC202" {
  availability_zone = aws_instance.EC201.availability_zone

  ami                    = var.EC202["ami_id"]
  instance_type          = var.EC202["instance_type"]
  key_name               = var.EC202["key_name"]
  user_data              = file(var.EC202["user_data"])
  vpc_security_group_ids = [aws_security_group.tls.id]
  subnet_id              = aws_subnet.nlp.id

  tags = local.EC202.tags

}
