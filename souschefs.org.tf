# This domain is not not currently, but a dummy record is set

resource "cloudflare_zone" "souschefs-org" {
  zone = "souschefs.org"
  plan = "free"
}

# 1 record is required by cloudflare
resource "cloudflare_record" "souschefs-org-not-used" {
  zone_id = cloudflare_zone.souschefs-org.id
  name    = "notused"
  value   = "192.168.0.1"
  type    = "A"
  ttl     = 3600
}
