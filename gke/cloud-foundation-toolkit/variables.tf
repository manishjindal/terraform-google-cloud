variable "project_id" {
    type = string
}

variable "region" {
    type = string
}
###################################
# vpc network for the gke cluster #
###################################
variable "network_name" {
    type = string
}

variable "subnetwork_name" {
    type = string
}

variable "ip_range_pods_name" {
    type = string
}

variable "ip_range_services_name" {
    type = string
}