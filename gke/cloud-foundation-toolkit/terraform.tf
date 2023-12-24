# terraform {
#   required_version = ">=1.3"
#   required_providers {
#     google = ">=4.0"
#   }
#   backend "gcs" {
#     # bucket = "<backend-bucket>"
#   }
# }

terraform {
  required_version = ">=1.3"
  required_providers {
    google = ">=4.0"
  }
  backend "gcs" {
    bucket = "mjindal-cft-examples"
    prefix = "gke"
  }
}