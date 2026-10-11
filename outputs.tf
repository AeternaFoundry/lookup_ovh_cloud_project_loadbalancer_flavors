output "cloud_project_loadbalancer_flavors_lookup_flavors" {
  description = "Map of flavors values across all cloud_project_loadbalancer_flavors_lookup, keyed the same as var.cloud_project_loadbalancer_flavors_lookup except keys with no flavors are omitted"
  value       = { for k, v in data.ovh_cloud_project_loadbalancer_flavors.cloud_project_loadbalancer_flavors_lookup : k => v.flavors if v.flavors != null && length(v.flavors) > 0 }
}
output "cloud_project_loadbalancer_flavors_lookup_region_name" {
  description = "Map of region_name values across all cloud_project_loadbalancer_flavors_lookup, keyed the same as var.cloud_project_loadbalancer_flavors_lookup except keys with no region_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_loadbalancer_flavors.cloud_project_loadbalancer_flavors_lookup : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}
output "cloud_project_loadbalancer_flavors_lookup_service_name" {
  description = "Map of service_name values across all cloud_project_loadbalancer_flavors_lookup, keyed the same as var.cloud_project_loadbalancer_flavors_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_loadbalancer_flavors.cloud_project_loadbalancer_flavors_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

