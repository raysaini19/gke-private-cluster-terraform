# ############# GKE variables declared
# variable "account_id" {
#   description = "The account id that is used to generate the service account email address and a stable unique id."
#   type        = string
# }
# variable "gke_cluster" {
#   description = "name of gke cluster"
#   type        = string
# }
# variable "remove_default_node_pool" {
#   type        = bool
#   description = "deletes the default node pool upon cluster creation"
# }


# variable "enable_private_endpoint" {
#   type        = bool
#   description = "When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled"
# }
# variable "enable_private_nodes" {
#   type        = bool
#   description = "Enables the private cluster feature, creating a private endpoint on the cluster"
# }
# variable "master_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation to use for the hosted master network"
# }

# variable "master_global_access_enabled" {
#   type = bool
# }


# variable "cluster_secondary_range_name" {
#   type        = string
#   description = "The name of the existing secondary range in the cluster's subnetwork to use for pod IP addresses"
# }
# variable "cluster_ipv4_cidr_block" {
#   type        = string
#   description = "The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask"
# }
# variable "services_ipv4_cidr_block" {
#   type        = string
#   description = "The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask"
# }


# variable "master_cidr_block" {
#   type        = string
#   description = "External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation."
# }
# variable "master_display_name" {
#   type        = string
#   description = "Field for users to identify CIDR blocks."
# }



# # Node Configuration Settings
# variable "node_count" {
#   description = "The disk size in GB for GKE nodes."
#   type        = number
# }
# variable "oauth_scopes" {
#   type        = list(string)
#   description = "value"
# }
# variable "node_pool" {
#   type        = string
#   description = "name of the primary pool"
# }
# variable "preemptible" {
#   description = "Whether the GKE nodes should be preemptible."
#   type        = bool
# }
# variable "machine_type" {
#   description = "The machine type for GKE nodes."
#   type        = string
# }
# variable "service_account" {
#   description = "The service account for GKE nodes."
#   type        = string
# }