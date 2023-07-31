# # Cloud router for nat gateway
# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router.html
# resource "google_compute_router" "gke_router" {
#   project = var.project_id
#   name    = "${local.name}-router"
#   network = google_compute_network.gke_vpc.name
#   region  = var.region
# }

# ## Create Nat Gateway
# # Reference : https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat.html
# resource "google_compute_router_nat" "gke_nat" {
#   name                               = "${local.name}-nat"
#   router                             = google_compute_router.gke_router.name
#   region                             = google_compute_router.gke_router.region
#   nat_ip_allocate_option             = var.nat_ip_allocate_option
#   source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
#   log_config {
#     enable = var.log_config_enable
#     filter = var.log_config_filter
#   }
# }

# # # Reference: https://registry.terraform.io/modules/terraform-google-modules/cloud-nat/google/latest 
# # module "cloud-nat" {
# #   source     = "terraform-google-modules/cloud-nat/google"
# #   version    = "~> 1.2"
# #   project_id = "tcb-project-371706"
# #   region     = "asia-south2"
# #   router     = google_compute_router.router.name
# #   name       = "nat-config"
# # }
