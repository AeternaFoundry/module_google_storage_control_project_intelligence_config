resource "google_storage_control_project_intelligence_config" "storage_control_project_intelligence_configs" {
  for_each = var.storage_control_project_intelligence_configs

  name           = each.value.name
  edition_config = each.value.edition_config

  dynamic "filter" {
    for_each = each.value.filter != null ? [each.value.filter] : []
    content {
      dynamic "excluded_cloud_storage_buckets" {
        for_each = filter.value.excluded_cloud_storage_buckets != null ? [filter.value.excluded_cloud_storage_buckets] : []
        content {
          bucket_id_regexes = excluded_cloud_storage_buckets.value.bucket_id_regexes
        }
      }
      dynamic "excluded_cloud_storage_locations" {
        for_each = filter.value.excluded_cloud_storage_locations != null ? [filter.value.excluded_cloud_storage_locations] : []
        content {
          locations = excluded_cloud_storage_locations.value.locations
        }
      }
      dynamic "included_cloud_storage_buckets" {
        for_each = filter.value.included_cloud_storage_buckets != null ? [filter.value.included_cloud_storage_buckets] : []
        content {
          bucket_id_regexes = included_cloud_storage_buckets.value.bucket_id_regexes
        }
      }
      dynamic "included_cloud_storage_locations" {
        for_each = filter.value.included_cloud_storage_locations != null ? [filter.value.included_cloud_storage_locations] : []
        content {
          locations = included_cloud_storage_locations.value.locations
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

