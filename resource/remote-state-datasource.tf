# Terraform Remote State Datasource
# data "terraform_remote_state" "eks" {
#   backend = "local"
#   config = {
#     path = "../../08-AWS-EKS-Cluster-Basics/01-ekscluster-terraform-manifests/terraform.tfstate"
#    }
# }


data "terraform_remote_state" "eks_terraform_cluster" {
  backend = "remote"
  config = {
    organization = "raysaini19"
    workspaces = {
      name = "eks-terraform"
    }
  }
}


data "aws_eks_cluster" "eks_cluster" {
  name = data.terraform_remote_state.eks_terraform_cluster.outputs.cluster_name
}

data "aws_eks_cluster_auth" "eks_cluster" {
  name = data.terraform_remote_state.eks_terraform_cluster.outputs.cluster_name
}

# Terraform Kubernetes Provider
provider "kubernetes" {
  host                   = data.terraform_remote_state.eks_terraform_cluster.outputs.cluster_endpoint
  cluster_ca_certificate = base64decode(data.terraform_remote_state.eks_terraform_cluster.outputs.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.eks_cluster.token
}

