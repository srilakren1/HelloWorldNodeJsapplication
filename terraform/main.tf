data "google_project" "project" {}

# Storage Bucket for source
resource "google_storage_bucket" "bucket" {
  name                        = "${data.google_project.project.project_id}-gcf-source"
  location                    = "US"
  uniform_bucket_level_access = true
}

