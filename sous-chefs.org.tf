# Our main domain
resource "cloudflare_zone" "sous-chefs-org" {
  zone = "sous-chefs.org"
  plan = "free"
}

# IP being for GitHub according to
# https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
resource "cloudflare_record" "sous-chefs-org-root" {
  zone_id = cloudflare_zone.sous-chefs-org.id
  name    = "sous-chefs.org"
  value   = "185.199.108.153"
  type    = "A"
  ttl     = 1
}

resource "cloudflare_record" "sous-chefs-org-www" {
  zone_id = cloudflare_zone.sous-chefs-org.id
  name    = "www"
  value   = "sous-chefs.github.io"
  type    = "CNAME"
  ttl     = 1
}

resource "cloudflare_record" "sous-chefs-org-mx-gmail-aspmx" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "aspmx.l.google.com"
  priority = 1
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "sous-chefs-org-mx-gmail-alt1" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "sous-chefs-org-mx-gmail-alt2" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "sous-chefs-org-mx-gmail-alt3" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "sous-chefs-org-mx-gmail-alt4" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
  type     = "MX"
  ttl      = 1
}

resource "cloudflare_record" "sous-chefs-org-google-verification" {
  zone_id  = cloudflare_zone.sous-chefs-org.id
  name     = "sous-chefs.org"
  value    = "2yok3u3hmqnuog3o6godzgqjakngcvuradqb7xrkh3g6zkd6j2dq.mx-verification.google.com"
  priority = 15
  type     = "MX"
  ttl      = 1
}