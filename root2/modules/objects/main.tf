
resource "google_storage_bucket_object" "myobjects" {
  for_each = { for object in var.objects : lower(object.name) => object }
  name     = each.value.name
  content  = each.value.content
  source   = each.value.source
  bucket   = each.value.bucket
}