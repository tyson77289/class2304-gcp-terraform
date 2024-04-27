terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraformgcp-420602"
  region  = "us-west1"
  zone    = "us-west1-a"
  credentials = "terraformgcp-420602-b4c4d2230802.json"
  
}

resource "google_storage_bucket" "saturday-fun-time" {
  name          = "image-storage66"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  
}