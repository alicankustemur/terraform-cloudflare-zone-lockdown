# Restrict access to these endpoints to requests from a known IP address.
resource "cloudflare_zone_lockdown" "main" {
    zone_id     = var.zone_id
    description = var.description
    
    urls = var.urls

    dynamic "configurations" {
        for_each = toset(var.whitelist)

        content {
            target  = "ip_range"
            value   = configurations.value
        }
    }
}