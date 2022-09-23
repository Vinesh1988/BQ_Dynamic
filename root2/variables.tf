
variable "name" {
  type        = string
  description = "Required. The name of the storage bucket."
  default = "bucketttyhy"
}

variable "location" {
  type        = string
  description = "Optional. The location of the storage bucket."
  default     = "EU"
}

variable "storage_class" {
  type        = string
  description = "Optional. The storage class of the storage bucket."
  default     = "STANDARD"
}

variable "uniform_bucket_level_access" {
  type        = bool
  description = "Optional. When set to 'true', enables uniform bucket-level access."
  default     = true
}

variable "force_destroy" {
  type        = bool
  description = "Optional. When set to 'true', deleting a storage bucket will delete all contained objects."
  default     = true
}

variable "labels" {
  type        = any
  description = "Optional. The Key/value label pairs of the storage bucket."
  default     = {"env":"dev"}
}
variable "objects" {
  type        = any
  description = "Optional. The list of objects."
  default     = [
    {
      name = "obj1"
      source = "pic1.png"
    
    }
  ]
}

