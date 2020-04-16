provider "cloudflare" {
  version = "~> 2.0"
}

variable "souschefs_zone_id" {
  default = "6455652de5d141a0db393d25310f1ef4"
}

variable "sous-chefs_zone_id" {
  default = "UNKNOWN"
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
