# VPC outputs
output "network" {
  value       = google_compute_network.gke_vpc
  description = "The VPC resource being created"
}

output "network_name" {
  value       = google_compute_network.gke_vpc.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = google_compute_network.gke_vpc.id
  description = "The ID of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.gke_vpc.self_link
  description = "The URI of the VPC being created"
}

# subnets outputs
output "public_subnets" {
  value       = google_compute_subnetwork.subnetwork.name
  description = "The created subnet resources"
}
output "private_subnets" {
  value       = google_compute_subnetwork.private_subnetwork.name
  description = "The created subnet resources"
}