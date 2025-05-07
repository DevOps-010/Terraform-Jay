variable "gcp_credentials" {
  type        = string
  description = "Path to GCP service account key JSON file"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_credentials)
  project     = "spiritual-clock-458008-s3"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}


