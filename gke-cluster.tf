# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account.html
# resource "google_service_account" "gke_svc_account" {
#   account_id   = "${local.name}-gke"
#   display_name = "Service Account for GKE nodes"
# }

# # Create GKE cluster with 2 nodes in our custom VPC/Subnet
# # Reference: https://github.com/hashicorp/terraform-provider-google/blob/main/website/docs/r/container_cluster.html.markdown
# resource "google_container_cluster" "gke_cluster" {
#   name                     = "${local.name}-${var.gke_cluster}"
#   location                 = var.region
#   network                  = google_compute_network.gke_vpc.name
#   subnetwork               = google_compute_subnetwork.subnetwork.name
#   remove_default_node_pool = var.remove_default_node_pool
#   initial_node_count       = 1
#   # networking_mode          = "VPC_NATIVE"  # Determines whether alias IPs or routes will be used for pod IPs in the cluster. Options are VPC_NATIVE or ROUTES
#   private_cluster_config {
#     enable_private_endpoint = var.enable_private_endpoint
#     enable_private_nodes    = var.enable_private_nodes
#     master_ipv4_cidr_block  = var.master_ipv4_cidr_block
#     master_global_access_config {
#       enabled = var.master_global_access_enabled
#     }
#   }
#   ip_allocation_policy {
#     cluster_secondary_range_name = var.cluster_secondary_range_name
#     cluster_ipv4_cidr_block      = var.cluster_ipv4_cidr_block
#     services_ipv4_cidr_block     = var.services_ipv4_cidr_block
#   }
#   master_authorized_networks_config {
#     cidr_blocks {
#       cidr_block   = var.master_cidr_block
#       display_name = var.master_display_name
#     }
#   }
# #   node_config {
# #     preemptible     = var.preemptible
# #     machine_type    = var.machine_type
# #     disk_size_gb    = var.disk_size_gb
# #     disk_type       = var.disk_type
# #     service_account = var.service_account
# #     # node_locations  = var.node_locations
# #     shielded_instance_config {
# #       enable_secure_boot          = var.enable_secure_boot
# #       enable_integrity_monitoring = var.enable_integrity_monitoring
# #     }
# #   }
# }



# # Manages a node pool in a Google Kubernetes Engine (GKE) cluster separately from the cluster control plane
# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool.html
# resource "google_container_node_pool" "node_pool" {
#   name       = "${local.name}-${var.node_pool}"
#   location   = var.region
#   cluster    = google_container_cluster.gke_cluster.name
#   node_count = var.node_count
#   node_config {
#     oauth_scopes = var.oauth_scopes
#     labels = local.tags
#     machine_type = var.machine_type
#     preemptible  = var.preemptible
#     service_account = google_service_account.gke_svc_account.email
#   }
# }