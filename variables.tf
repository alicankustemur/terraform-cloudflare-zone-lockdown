variable "whitelist" {
    description = "The whitelist IPs for urls"
    type        = list(string)
}

variable "zone_id" {
    description = "The DNS zone ID to which the access rule should be added."
}

variable "urls" {
    description = "A list of simple wildcard patterns to match requests against."
    type    = list(string)
}

variable "description" {
    description = "A description about the lockdown entry."
}

variable "email" {
    description = "The email associated with the account."
}

variable "api_key" {
    description = "The Cloudflare API key."
}

variable "account_id" {
    description = "The Cloudflare Account ID."
}