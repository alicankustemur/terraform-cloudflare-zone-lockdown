# Cloudflare Zone Lockdown Terraform Module

## Zone Lockdown
Lockdown a specific URL on your zone to specific IP addresses. This is useful to protect an admin or protected area from non-specified IP addresses.

## Terraform versions

Terraform `~> 0.13.0`.

## Usage

```hcl
module "zone_lockdown" {
    source = "terraform-cloudflare-modules/zone-lockdown"

    whitelist = [
        "1.2.3.4/32",
        "5.6.7.8/32",
    ]
    urls = [
        "example.com",
        "example.com/*",
    ]
    description = "Allow only example.com to whitelist"
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| cloudflare | >= 2.11.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | >= 2.11.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| whitelist | The whitelist IPs for urls | `list(string)` | `[]` | no |
| zone_id | The DNS zone ID to which the access rule should be added. | `string` | `` | no |
| urls | A list of simple wildcard patterns to match requests against. | `list(string)` | `[]` | no |
| description | A description about the lockdown entry. | `string` | `` | no |
| email | The email associated with the account. | `string` | `` | no |
| api_key | The Cloudflare API key. | `string` | `` | no |
| account_id | The Cloudflare Account ID. | `string` | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| whitelist | The whitelist IPs for urls|
| urls | The URLs restricted with whitelist|

## Authors

Module is maintained by [Ali Can Kuştemur](https://github.com/alicankustemur)

## License

Apache 2 Licensed. See LICENSE for full details.
