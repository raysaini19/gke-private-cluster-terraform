# terraform {
#   backend "gcs" {
#     bucket = "github-action-gcp-bucket" # GCS bucket name to store terraform tfstate
#     prefix = "anthos-cluster"              # Update to desired prefix name. Prefix name should be unique for each Terraform project having same remote state bucket.
#   }
# }

terraform {
  cloud {
    organization = "raysaini19"
    workspaces {
      name = "github-action-with-aws-terraform"
    }
  }
}