# Private DNS Layer
resource "aws_route53_zone" "main" {
  name = "dns.local"
  vpc {
    vpc_id = aws_vpc.main.id
  }
  force_destroy = true
}

# EC201 DNS Record
resource "aws_route53_record" "EC201" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "${var.EC201["instance_name"]}.dns.local"
  type    = "A"
  ttl     = "30"

  records = [
    aws_instance.EC201.private_ip,
  ]
}

# EC202 DNS Record
resource "aws_route53_record" "EC202" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "${var.EC202["instance_name"]}.dns.local"
  type    = "A"
  ttl     = "30"

  records = [
    aws_instance.EC202.private_ip,
  ]
}
