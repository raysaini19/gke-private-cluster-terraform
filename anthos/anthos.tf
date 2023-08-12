### https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/gke_hub_feature
### Gkehub Feature Multi Cluster Ingress
resource "google_gke_hub_membership" "membership" {
  membership_id = "gke-membership"
  project       = data.terraform_remote_state.gke_terraform_cluster.outputs.project_id
  endpoint {
    gke_cluster {
      resource_link = "//container.googleapis.com/${data.terraform_remote_state.gke_terraform_cluster.outputs.cluster_id}"
    }
  }
  provider = google-beta
}
resource "google_gke_hub_feature" "feature" {
  name     = "configmanagement"
  project  = data.terraform_remote_state.gke_terraform_cluster.outputs.project_id
  location = "global"
  provider = google-beta
}

# resource "google_gke_hub_feature_membership" "feature_member" {
#   location   = "global"
#   project    = data.terraform_remote_state.gke_terraform_cluster.outputs.project_id
#   feature    = google_gke_hub_feature.feature.name
#   membership = google_gke_hub_membership.membership.membership_id
#   configmanagement {
#     version = "1.8.0"
#     config_sync {
#       git {
#         sync_repo   = "https://github.com/raysaini19/gke-private-cluster-terraform.git"
#         sync_branch = "main"
#         policy_dir  = "examples/acm-terraform-blog-part1/config-root"
#         secret_type = "none"
#       }
#     }
#   }
#   provider = google-beta
# }


resource "google_gke_hub_feature_membership" "feature_member" {
  location = "global"
  project    = data.terraform_remote_state.gke_terraform_cluster.outputs.project_id
  feature = google_gke_hub_feature.feature.name
  membership = google_gke_hub_membership.membership.membership_id
  configmanagement {
    version = "1.15.3"
    config_sync {
      git {
        sync_repo = "git@github.com:terraform-google-modules/terraform-google-kubernetes-engine.git"
        sync_branch = "master"
        policy_dir = "system/acm-terraform-blog-part1/config-root"
        secret_type = "none"
      }
    }
  }
  provider = google-beta
}