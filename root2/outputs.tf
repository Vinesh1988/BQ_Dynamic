output "bucket_values" {
  value       = module.bucket
  description = "The storage bucket."
}

output "bucket_name" {
  value       = module.bucket.bucket.name
  description = "The name of the storage bucket."
}

output "objects" {
  value = module.objects
  description = "The objects."
  sensitive = true
}

output "objects_names" {
  value       = [for object in module.objects.objects : object.name]
  description = "The names of the objects."
}