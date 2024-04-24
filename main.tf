terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  project = "gcpproject1-420819"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials = "gcpproject1-420819-4466f7fea5a5.json"

}

resource "google_storage_bucket" "b3humza" {
  name          = "b3humza"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

}