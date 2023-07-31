# VPC values
ip_cidr_range           = "10.0.0.0/24"
vpc_name                = "gke-vpc"
routing_mode            = "REGIONAL"
mtu                     = 1460
auto_create_subnetworks = false
private_ip_cidr_range   = "10.50.0.0/24"
# subnetwork values
pod_range_name                      = "k8s-pods"
pod_ip_cidr_range                   = "10.20.0.0/16"
service_range_name                  = "k8s-services"
service_ip_cidr_range               = "10.30.0.0/16"
vpc_log_config_aggregation_interval = "INTERVAL_10_MIN"
vpc_log_config_flow_sampling        = 0.5
vpc_log_config_metadata             = "INCLUDE_ALL_METADATA"
# firewall values
ssh_source_ranges = [
  "0.0.0.0/0"
]
internal_source_ranges = [
  "10.0.0.0/24",
  "10.30.0.0/16"
]