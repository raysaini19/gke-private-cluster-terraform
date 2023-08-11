# Terraform Remote State Datasource
# data "terraform_remote_state" "eks" {
#   backend = "local"
#   config = {
#     path = "../../08-AWS-EKS-Cluster-Basics/01-ekscluster-terraform-manifests/terraform.tfstate"
#    }
# }


data "terraform_remote_state" "gke_terraform_cluster" {
  backend = "remote"
  config = {
    organization = "raysaini19"
    workspaces = {
      name = "eks-terraform"
    }
  }
}


# module "gke_auth" {
#   source               = "terraform-google-modules/kubernetes-engine/google//modules/auth"
#   version              = "24.1.0"
#   project_id           = var.project_id
#   location             = module.gke.location
#   cluster_name         = module.gke.name
#   use_private_endpoint = true
#   depends_on           = [module.gke]
# }

