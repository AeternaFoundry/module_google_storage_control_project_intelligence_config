variable "storage_control_project_intelligence_configs" {
  description = <<EOT
Map of storage_control_project_intelligence_configs, attributes below
Required:
    - name
Optional:
    - edition_config
    - filter (block):
        - excluded_cloud_storage_buckets (optional, block):
            - bucket_id_regexes (required)
        - excluded_cloud_storage_locations (optional, block):
            - locations (required)
        - included_cloud_storage_buckets (optional, block):
            - bucket_id_regexes (required)
        - included_cloud_storage_locations (optional, block):
            - locations (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name           = string
    edition_config = optional(string)
    filter = optional(object({
      excluded_cloud_storage_buckets = optional(object({
        bucket_id_regexes = list(string)
      }))
      excluded_cloud_storage_locations = optional(object({
        locations = list(string)
      }))
      included_cloud_storage_buckets = optional(object({
        bucket_id_regexes = list(string)
      }))
      included_cloud_storage_locations = optional(object({
        locations = list(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

