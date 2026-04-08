variable "buckets" {
  type = list(object({
    name       = string
    location   = string
    versioning = optional(bool)
  }))
}