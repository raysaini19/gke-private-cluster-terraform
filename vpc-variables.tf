############# VPC variables

variable "vpc_name" {
  type        = string
  default     = ""
  description = "name of the vpc"
}
variable "ip_cidr_range" {
  type        = string
  description = "The range of IP addresses belonging to the subnetwork secondary range."
}
variable "routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL'). Possible values are: REGIONAL, GLOBAL."
}
variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}
variable "mtu" {
  type        = number
  description = "The network MTU (If set to 0, meaning MTU is unset - defaults to '1460'). Recommended values: 1460 (default for historic reasons), 1500 (Internet default), or 8896 (for Jumbo packets). Allowed are all values in the range 1300 to 8896, inclusively."
  default     = 0
}


# subnetwork variables
variable "pod_range_name" {
  type        = string
  description = "The 1st name associated with the subnetwork secondary range"
}
variable "pod_ip_cidr_range" {
  type    = string
  default = "The 1st range of IP addresses belonging to the subnetwork secondary range"
}
variable "service_ip_cidr_range" {
  type        = string
  description = "The 2nd name associated with the subnetwork secondary range"
}
variable "service_range_name" {
  type        = string
  description = "The 2nd range of IP addresses belonging to the subnetwork secondary range"
}
variable "vpc_log_config_aggregation_interval" {
  type        = string
  description = "Toggles the aggregation interval for collecting flow logs.. Possible values are: INTERVAL_5_SEC, INTERVAL_30_SEC, INTERVAL_1_MIN, INTERVAL_5_MIN, INTERVAL_10_MIN, INTERVAL_15_MIN."
}
variable "vpc_log_config_flow_sampling" {
  type        = number
  description = "Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 which means half of all collected logs are reported."
}
variable "vpc_log_config_metadata" {
  type        = string
  description = "Configures whether metadata fields should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA. Possible values are: EXCLUDE_ALL_METADATA, INCLUDE_ALL_METADATA, CUSTOM_METADATA."
}
variable "private_ip_cidr_range" {
  type        = string
  description = "cidr for private subnet"
}

#firewall variables
variable "ssh_source_ranges" {
  type        = set(string)
  description = "all range for ssh"
}
variable "internal_source_ranges" {
  type        = set(string)
  description = "all range for icmp, tcp and udp"
}