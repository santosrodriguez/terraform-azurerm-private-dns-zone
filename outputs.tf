output "fqdn" {
  value = azurerm_private_dns_zone.private_dns_zone.name
}

output "host_name" {
  value = azurerm_private_dns_zone.private_dns_zone.soa_record[0].host_name
}

output "private_dns_zone_id" {
  value = azurerm_private_dns_zone.private_dns_zone.id
}
