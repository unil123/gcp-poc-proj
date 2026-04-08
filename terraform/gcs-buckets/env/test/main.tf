module "gcs_buckets_test" {
  source = "../../../modules/gcs-buckets"

  config = jsondecode(var.gcs_bu_task_test_json)
}