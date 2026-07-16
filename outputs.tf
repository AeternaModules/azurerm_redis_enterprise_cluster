output "redis_enterprise_clusters_id" {
  description = "Map of id values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_enterprise_clusters_hostname" {
  description = "Map of hostname values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "redis_enterprise_clusters_location" {
  description = "Map of location values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "redis_enterprise_clusters_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.minimum_tls_version if v.minimum_tls_version != null && length(v.minimum_tls_version) > 0 }
}
output "redis_enterprise_clusters_name" {
  description = "Map of name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_enterprise_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "redis_enterprise_clusters_sku_name" {
  description = "Map of sku_name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "redis_enterprise_clusters_tags" {
  description = "Map of tags values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "redis_enterprise_clusters_zones" {
  description = "Map of zones values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

