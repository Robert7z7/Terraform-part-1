terraform {
  required_providers {
    google = {
      version = "4.15.0"
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project     = "stone-rhytm-352318"
  region      = "europe-central2"
  zone        = "europe-central2-a"
  credentials = "/home/cubert/Terraform-part-1/stone-rhythm-352318-b057a1009d88.json"
}
