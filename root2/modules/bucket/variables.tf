
variable "name" {
  type        = string
  description = "Required. The name of the storage bucket."
}

variable "location" {
  type        = string
  description = "Optional. The location of the storage bucket."
}

variable "storage_class" {
  type        = string
  description = "Optional. The storage class of the storage bucket."
}

variable "uniform_bucket_level_access" {
  type        = bool
  description = "Optional. When set to 'true', enables uniform bucket-level access."
}

variable "force_destroy" {
  type        = bool
  description = "Optional. When set to 'true', deleting a storage bucket will delete all contained objects."
}
variable "labels" {
  type        = any
  description = "Optional. The Key/value label pairs of the storage bucket."

}