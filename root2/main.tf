provider "google" {
    credentials = "<filename>.json"
    project = "<project id>"
}

module "bucket" {
  source = "./modules/bucket"

  name                        = var.name
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
  labels                      = var.labels
}

locals {
  objects = [
    for object in var.objects : {
      name    = object.name
      content = lookup(object, "content", null)
      source  = lookup(object, "source", null)
      bucket  = lookup(object, "bucket", module.bucket.bucket.name)
    }
  ]
}

module "objects" {
  source = "./modules/objects"

  objects = local.objects
}