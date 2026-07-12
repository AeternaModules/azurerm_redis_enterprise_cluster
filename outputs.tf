output "redis_enterprise_clusters_hostname" {
  description = "Map of hostname values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.hostname }
}
output "redis_enterprise_clusters_location" {
  description = "Map of location values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.location }
}
output "redis_enterprise_clusters_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.minimum_tls_version }
}
output "redis_enterprise_clusters_name" {
  description = "Map of name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.name }
}
output "redis_enterprise_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.resource_group_name }
}
output "redis_enterprise_clusters_sku_name" {
  description = "Map of sku_name values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.sku_name }
}
output "redis_enterprise_clusters_tags" {
  description = "Map of tags values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.tags }
}
output "redis_enterprise_clusters_zones" {
  description = "Map of zones values across all redis_enterprise_clusters, keyed the same as var.redis_enterprise_clusters"
  value       = { for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : k => v.zones }
}

