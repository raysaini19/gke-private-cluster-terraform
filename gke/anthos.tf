# resource "google_gke_hub_membership" "membership" {
#   membership_id = "gke-membership"
#   project       = var.project_id
#   endpoint {
#     gke_cluster {
#       resource_link = "//container.googleapis.com/${module.gke.cluster_id}"
#     }
#   }
#   provider = google-beta
# }
# resource "google_gke_hub_feature" "feature" {
#   name     = "configmanagement"
#   project  = var.project_id
#   location = "global"
#   provider = google-beta
# }

# # resource "google_gke_hub_feature_membership" "feature_member" {
# #   location = "global"
# #   feature = google_gke_hub_feature.feature.name
# #   membership = google_gke_hub_membership.membership.membership_id
# #   configmanagement {
# #     version = "1.8.0"
# #     config_sync {
# #       git {
# #        sync_repo = “https://github.com/terraform-google-modules/terraform-google-kubernetes-engine.git”
# #         sync_branch = “master”
# #    policy_dir = “examples/acm-terraform-blog-part1/config-root”
# #         secret_type = "none"
# #       }
# #     }
# #   }
# #   provider = google-beta
# # }