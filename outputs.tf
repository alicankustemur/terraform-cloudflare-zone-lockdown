output "whitelist" {
    description = "The whitelist IPs for urls"
    value       = var.whitelist
}

output "urls" {
    description = "The URLs restricted with whitelist"
    value       = var.urls
}