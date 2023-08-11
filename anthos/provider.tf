terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.69.1"
      # region = "europe-west2"
    }
  }
}

# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
# provider "google" {
#   region = "europe-west2"
# }

# provider "kubernetes"{
#     required_providers = "~> 2.10"
# }