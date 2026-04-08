# Output Values for Test Environment
output "test_bucket_names" {
  description = "List of all created bucket names in test environment"
  value       = keys(google_storage_bucket.buckets)
}

output "test_bucket_urls" {
  description = "Map of bucket names to their GS URLs in test environment"
  value = {
    for b in google_storage_bucket.buckets :
    b.name => b.url
  }
}

output "test_bucket_details" {
  description = "Detailed information about all created buckets in test environment"
  value       = google_storage_bucket.buckets
  sensitive   = true
}

output "test_iam_assignments" {
  description = "Summary of IAM role assignments in test environment"
  value       = "Not implemented"
  sensitive   = true
}

output "test_environment_summary" {
  description = "High-level summary of the test deployment"
  value = {
    total_buckets = length(google_storage_bucket.buckets)
  }
  sensitive = true
}