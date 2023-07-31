# # gke variables
# account_id                   = "gke"
# gke_cluster                  = "gke-terraform-cluster"
# enable_private_endpoint      = true
# enable_private_nodes         = true
# master_ipv4_cidr_block       = "10.13.0.0/28"
# master_global_access_enabled = true
# cluster_secondary_range_name = "gke-secondary-range"
# cluster_ipv4_cidr_block      = "192.168.0.0/16"
# services_ipv4_cidr_block     = "192.169.0.0/16"
# master_cidr_block            = "10.0.0.25/32"
# master_display_name          = "master-network"



# # preemptible                 = true
# # machine_type                = "n1-standard-2"
# # disk_size_gb                = 100
# # disk_type                   = "pd-ssd"
# # service_account             = "gke-terraform-project@${var.project_id}.iam.gserviceaccount.com"
# # node_locations              = [europe-west2-b, europe-west2-c, europe-west2-a]
# # enable_secure_boot          = var.enable_secure_boot
# # enable_integrity_monitoring = var.enable_integrity_monitoring



# # node pools variables
# node_pool       = "node-pool"
# preemptible     = true
# machine_type    = "n1-standard-2"
# node_count      = 3
# service_account = "gke-terraform-project@${var.project_id}.iam.gserviceaccount.com"
# oauth_scopes = [
#   "https://www.googleapis.com/auth/logging.write",
#   "https://www.googleapis.com/auth/monitoring",
# ]