############# Generic vairbales defined
# GCP Project ID
variable "project_id" {
  description = "project id name"
  type        = string
  default     = ""
}
# GCP Region
variable "region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = ""
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = ""
}
# organization Division
variable "organization" {
  description = "organization- Infrastructure"
  type        = string
  default     = ""
}
# team Variable
variable "team" {
  description = "organization team for  Infrastructure belongs"
  type        = string
  default     = ""
}





















# Node Configuration Settings
# variable "preemptible" {
#   description = "Whether the GKE nodes should be preemptible."
#   type        = bool
# }
# variable "machine_type" {
#   description = "The machine type for GKE nodes."
#   type        = string
# }
# variable "disk_size_gb" {
#   description = "The disk size in GB for GKE nodes."
#   type        = number
# }
# variable "node_count" {
#   description = "The disk size in GB for GKE nodes."
#   type        = number
# }
# variable "disk_type" {
#   description = "The disk type for GKE nodes."
#   type        = string
# }
# variable "service_account" {
#   description = "The service account for GKE nodes."
#   type        = string
# }
# # variable "node_locations" {
# #   description = "The locations for GKE nodes."
# #   type        = list(string)
# # }
# variable "enable_secure_boot" {
#   description = "Whether to enable secure boot for GKE nodes."
#   type        = bool
# }
# variable "enable_integrity_monitoring" {
#   description = "Whether to enable integrity monitoring for GKE nodes."
#   type        = bool
# }
