output "vpc" {
    value = module.gcp-network
}

output "vpc-network-id" {
    value = module.gcp-network.network_id
}

output "subnets" {
    value = module.gcp-network.subnets_names[0]
}

output "pods-cidr" {
    value = module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] == "pod-cidr" ? module.gcp-network.subnets_secondary_ranges[0][0]["ip_cidr_range"] : module.gcp-network.subnets_secondary_ranges[0][1]["ip_cidr_range"] 
}

output "service-cidr" {
    value = module.gcp-network.subnets_secondary_ranges[0][0]["range_name"] == "service-cidr" ? module.gcp-network.subnets_secondary_ranges[0][0]["ip_cidr_range"] : module.gcp-network.subnets_secondary_ranges[0][1]["ip_cidr_range"] 
}

