# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address.html
# resource "google_compute_address" "internal_with_subnet_and_address" {
#   project      = var.project_id
#   address_type = var.address_type
#   region       = var.region
#   subnetwork   = "${local.name}-subnet"
#   name         = "${local.name}-${var.address_name}"
#   address      = var.address_ip
#   description  = var.address_description
#   depends_on = [
#     google_compute_network.gke_vpc
#   ]
# }

# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance.html
# resource "google_compute_instance" "default" {
#   project      = var.project_id
#   zone         = var.compute_zone
#   name         = var.compute_name
#   machine_type = var.compute_machine_type
#   boot_disk {
#     initialize_params {
#       image = var.compute_image
#     }
#   }
#   network_interface {
#     network    = google_compute_network.gke_vpc.name
#     subnetwork = google_compute_subnetwork.subnetwork.self_link # Replace with a reference or self link to your subnet, in quotes
#     network_ip = google_compute_address.internal_with_subnet_and_address.address
#   }
#   depends_on = [
#     google_compute_network.gke_vpc
#   ]
# }


# # Firewall to access bastion/jump host via ssh
# # Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall.html
# resource "google_compute_firewall" "ssh_allow" {
#   project = var.project_id
#   name    = "${local.name}-ssh"
#   network = google_compute_network.gke_vpc.name
#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }
#   source_ranges = var.ssh_source_ranges
#   depends_on = [
#     google_compute_network.gke_vpc
#   ]
# }



# resource "google_compute_firewall" "allow-internal" {
#   name    = "${local.name}-allow-internal"
#   project = var.project_id
#   network = google_compute_network.gke_vpc.id
#   allow {
#     protocol = "tcp"
#     ports    = ["1-65535"]
#   }
#   allow {
#     protocol = "udp"
#     ports    = ["1-65535"]
#   }
#   allow {
#     protocol = "icmp"
#   }
#   source_ranges = var.internal_source_ranges
# }
