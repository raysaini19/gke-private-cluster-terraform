# # google compute address variable

# variable "address_type" {
#   type        = string
#   description = "The type of address to reserve. Possible values are: INTERNAL, EXTERNAL."
# }
# variable "address_name" {
#   type        = string
#   description = "Name of the resource"
# }
# variable "address_ip" {
#   type        = string
#   description = "The static external IP address represented by this resource"
# }
# variable "address_description" {
#   type        = string
#   description = "description of this resource"
# }


# # google compute instance variable
# variable "compute_name" {
#   type        = string
#   description = " A unique name for the resource, required by GCE"
# }
# variable "compute_machine_type" {
#   type        = string
#   description = "The machine type to create."
# }
# variable "compute_image" {
#   type        = string
#   description = "The image from which to initialize this disk"
# }
# variable "compute_zone" {
#   type        = string
#   description = "zone for the compute instance"
# }


# variable "ssh_source_ranges" {
#   type        = set(string)
#   description = "all range for ssh"
# }
# variable "internal_source_ranges" {
#   type        = set(string)
#   description = "all range for icmp, tcp and udp"
# }