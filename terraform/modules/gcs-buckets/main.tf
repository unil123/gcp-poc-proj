resource "google_storage_bucket" "buckets" {
  for_each = {
    for b in var.buckets : b.name => b
  }

  name     = each.value.name
  location = each.value.location

  versioning {
    enabled = lookup(each.value, "versioning", false)
  }
}