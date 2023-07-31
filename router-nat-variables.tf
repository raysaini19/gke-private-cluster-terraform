# ############# Cloud and NAT variables 
# variable "nat_ip_allocate_option" {
#   type        = string
#   description = "How external IPs should be allocated for this NAT. Possible values are: MANUAL_ONLY, AUTO_ONLY."
# }
# variable "source_subnetwork_ip_ranges_to_nat" {
#   type        = string
#   description = "How NAT should be configured per Subnetwork. Possible values are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS."
# }
# variable "log_config_enable" {
#   type        = bool
#   description = "Indicates whether or not to export logs."
# }
# variable "log_config_filter" {
#   type        = string
#   description = "Specifies the desired filtering of logs on this NAT. Possible values are: ERRORS_ONLY, TRANSLATIONS_ONLY, ALL."
# }