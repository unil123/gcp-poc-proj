# Test Environment Configuration
# This file uses the gcs-buckets-bu module to provision GCS buckets for the test environment

# Parse the JSON configuration from environment variable
locals {
  config = jsondecode(var.gcs_bu_task_test_json)
}

# Use the gcs-buckets-bu module
module "gcs_buckets_test" {
  source = "../../../modules/gcs-buckets-bu"

  config = local.config
}