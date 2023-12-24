locals {
    pods-cidr-name = module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] == "pod-cidr" ? module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] : module.gcp-network.subnets_secondary_ranges[0][1]["range_name"]
    service-cidr-name = module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] == "service-cidr" ? module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] : module.gcp-network.subnets_secondary_ranges[0][1]["range_name"]
}