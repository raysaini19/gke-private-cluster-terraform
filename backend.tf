# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }

# terraform {
#   cloud {
#     organization = "raysaini19"

#     workspaces {
#       name = "eks-terraform"
#     }
#   }
# }

terraform {
  backend "gcs" {
    bucket = "github-action-gcp-bucket" # GCS bucket name to store terraform tfstate
    prefix = "gke-terraform-cluster"    # Update to desired prefix name. Prefix name should be unique for each Terraform project having same remote state bucket.
  }
}