# Our main domain
resource "cloudflare_zone" "sous-chefs.org" {
  zone = "sous-chefs.org"
  plan = "free"
}

resource "cloudflare_record" "root" {
  zone_id = var.sous-chefs_zone_id
  name    = "@"
  value   = "185.199.108.153"
  type    = "A"
  ttl     = 3600
}

resource "cloudflare_record" "www" {
  zone_id = var.sous-chefs_zone_id
  name    = "www"
  value   = "sous-chefs.github.io"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "mx-gmail-aspmx" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "aspmx.l.google.com"
  priority = 1
  type     = "MX"
  ttl      = 3600
}

resource "cloudflare_record" "mx-gmail-alt1" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 3600
}

resource "cloudflare_record" "mx-gmail-alt2" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 3600
}

resource "cloudflare_record" "mx-gmail-alt3" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 3600
}

resource "cloudflare_record" "mx-gmail-alt4" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 3600
}

resource "cloudflare_record" "google-verification" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "@"
  value    = "2yok3u3hmqnuog3o6godzgqjakngcvuradqb7xrkh3g6zkd6j2dq.mx-verification.google.com"
  priority = 15
  type     = "MX"
  ttl      = 3600
}