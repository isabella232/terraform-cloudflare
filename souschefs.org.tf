# This domain is not not currently, but a dummy record is set

resource "cloudflare_zone" "souschefs-org" {
  zone = "souschefs.org"
  plan = "free"
}

resource "cloudflare_record" "terraform" {
  zone_id = cloudflare_zone.souschefs-org.id
  name    = "terraform"
  value   = "192.168.0.1"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.souschefs-org.id
  name    = "@"
  value   = "192.168.0.1"
  type    = "A"
  ttl     = 3600
}