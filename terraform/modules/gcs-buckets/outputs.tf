output "bucket_names" {
  value = keys(google_storage_bucket.buckets)
}

output "bucket_urls" {
  value = {
    for b in google_storage_bucket.buckets :
    b.name => b.url
  }
}