### https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/gke_hub_feature
### Gkehub Feature Multi Cluster Ingress
resource "google_gke_hub_membership" "membership" {
  membership_id = "gke-membership"
  project       = "${data.terraform_remote_state.gke_terraform_cluster.outputs.project_id}"
  endpoint {
    gke_cluster {
      resource_link = "//container.googleapis.com/${data.terraform_remote_state.gke_terraform_cluster.outputs.cluster_id}"
    }
  }
  provider = google-beta
}
resource "google_gke_hub_feature" "feature" {
  name     = "configmanagement"
  project  = "${data.terraform_remote_state.gke_terraform_cluster.outputs.project_id}"
  location = "global"
  provider = google-beta
}




# resource "google_gke_hub_feature" "feature" {
#   name = "multiclusteringress"
#   location = "global"
#   project  = "${data.terraform_remote_state.gke_terraform_cluster.outputs.project_id}"
#   spec {
#     multiclusteringress {
#       config_membership = google_gke_hub_membership.membership.id
#     }
#   }
#   provider = google-beta
# }




# # resource "google_gke_hub_feature" "configmanagement_acm_feature" {
# #   provider = google-beta
# #   name     = "configmanagement"
# #   location = "global"
# #   project = var.project_id
# # }
 
 
# # resource "google_gke_hub_feature_membership" "feature_member" {
# #   provider   = google-beta
# #   location   = "global"
# #   feature    = "configmanagement"
# #   membership = google_gke_hub_membership.membership.membership_id
# #   configmanagement {
# #     version = "1.8.0"
 
# #     config_sync {
# #       source_format = "unstructured"
# #       git {
# #         sync_repo   = var.sync_repo
# #         sync_branch = var.sync_branch
# #         policy_dir  = var.policy_dir
# #         secret_type = "none"
# #       }
# #     }
# #     policy_controller {
# #       enabled                    = true
# #       template_library_installed = true
# #       referential_rules_enabled  = true
# #     }
# #   }
# # }
