resource "google_storage_bucket" "mybucket" {
  name                        = var.name
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  labels                      = var.labels
  force_destroy               = var.force_destroy
}