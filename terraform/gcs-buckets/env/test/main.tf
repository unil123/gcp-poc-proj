locals {
  config = jsondecode(var.gcs_bu_task_test_json)
}

module "gcs_buckets" {
  source  = "../../../modules/gcs-buckets"
  buckets = local.config.buckets
}