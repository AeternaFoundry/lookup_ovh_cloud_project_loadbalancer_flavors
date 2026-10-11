data "ovh_cloud_project_loadbalancer_flavors" "cloud_project_loadbalancer_flavors_lookup" {
  for_each = var.cloud_project_loadbalancer_flavors_lookup

  region_name  = each.value.region_name
  service_name = each.value.service_name
}

