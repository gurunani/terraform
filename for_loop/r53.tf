resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.hosted_zone_id
  name    = "${each.key}.${var.domine_name}" #mongodb.gurulabs.xyz
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}