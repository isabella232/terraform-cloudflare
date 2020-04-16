provider "cloudflare" {
  version = "~> 2.0"
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sous-chefs"
    workspaces {
      name = "terraform-cloudflare"
    }
  }
}
