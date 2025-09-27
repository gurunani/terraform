resource "aws_route53_record" "www" {
    count = length(var.instances)
  zone_id = var.hosted_zone_id
  name    = "${var.instances[count.index]}.${var.domine_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
}