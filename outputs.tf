output "redis_enterprise_clusters" {
  description = "All redis_enterprise_cluster resources"
  value       = azurerm_redis_enterprise_cluster.redis_enterprise_clusters
}
output "redis_enterprise_clusters_hostname" {
  description = "List of hostname values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.hostname]
}
output "redis_enterprise_clusters_location" {
  description = "List of location values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.location]
}
output "redis_enterprise_clusters_minimum_tls_version" {
  description = "List of minimum_tls_version values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.minimum_tls_version]
}
output "redis_enterprise_clusters_name" {
  description = "List of name values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.name]
}
output "redis_enterprise_clusters_resource_group_name" {
  description = "List of resource_group_name values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.resource_group_name]
}
output "redis_enterprise_clusters_sku_name" {
  description = "List of sku_name values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.sku_name]
}
output "redis_enterprise_clusters_tags" {
  description = "List of tags values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.tags]
}
output "redis_enterprise_clusters_zones" {
  description = "List of zones values across all redis_enterprise_clusters"
  value       = [for k, v in azurerm_redis_enterprise_cluster.redis_enterprise_clusters : v.zones]
}

