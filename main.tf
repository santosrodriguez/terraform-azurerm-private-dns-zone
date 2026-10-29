resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.fqdn
  resource_group_name = var.resource_group_name
  tags = var.tags
  dynamic "soa_record" {
    for_each = { for k, v in var.soa_record : k => v if v != null}
    content {
      ttl = soa_record.value.ttl
      email = soa_record.value.email
      minimum_ttl = soa_record.value.minimum_ttl
      refresh_time = soa_record.value.refresh_time
      retry_time = soa_record.value.retry_time
      expire_time = soa_record.value.expire_time
      tags = soa_record.value.tags
    }
  }
}
