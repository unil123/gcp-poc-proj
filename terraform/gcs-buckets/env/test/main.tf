locals {
  config = jsondecode(var.gcs_bu_task_test_json)
}

resource "google_storage_bucket" "buckets" {
  for_each = {
    for b in local.config.buckets : b.name => b
  }

  name     = each.value.name
  location = each.value.location

  versioning {
    enabled = lookup(each.value, "versioning", false)
  }
}