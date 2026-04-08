# Backend is configured via terraform init in CI

locals {
  config = jsondecode(var.gcs_bu_task_test_json)
}