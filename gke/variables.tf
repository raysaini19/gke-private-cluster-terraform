variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in"
  default     = ""
}
variable "region" {
  type        = string
  description = "The region to host the cluster in"
  default     = ""
}
variable "env_name" {
  type        = string
  description = "The environment for the GKE cluster"
  default     = "dev"
}