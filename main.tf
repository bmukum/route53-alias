data "aws_route53_zone" "this" {
  name         = "${var.dns_zone_name}."
  private_zone = var.private_zone
}

resource "aws_route53_record" "name" {
  zone_id = data.aws_route53_zone.this.zone_id
  name    = var.name
  type    = "A"

  alias {
    name                   = var.alias_name
    zone_id                = var.alias_zone_id
    evaluate_target_health = var.evaluate_target_health
  }

  allow_overwrite = var.allow_overwrite
}