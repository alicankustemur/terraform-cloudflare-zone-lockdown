terraform {
    required_providers {
        cloudflare = {
            source = "cloudflare/cloudflare"
            version = "2.11.0"
        }
    }
}

provider "cloudflare" {
    email      = var.email
    api_key    = var.api_key
    account_id = var.account_id
}