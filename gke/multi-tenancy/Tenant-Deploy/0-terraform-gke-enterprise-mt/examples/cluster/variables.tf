variable "host_project_id" {
  description = "The organization id associated with these resources"
  type        = string
}

variable "service_x_project_id" {
  description = "The billing account associated with projects"
  type        = string
}

variable "service_x_project_number" {
  description = "The folder id to hold the network projects"
  type        = string
}

variable "service_y_project_id" {
  description = "The folder id to hold the cluster projects"
  type        = string
}

variable "service_y_project_number" {
  description = "The prefix used for projects and dataset ID/names"
  type        = string
}

variable "master_x_authorized_network" {
  type = string
  default = "0.0.0.0/0"
}
variable "master_y_authorized_network" {
  type = string
  default = "0.0.0.0/0"
}

variable "prefix" {
  type = string
  default = "tf-multi-tenant-host"
}

variable "region_x" {
  description = "The region used for cluster X"
  default     = "us-central1"
}

variable "region_x_zones" {
  description = "The zones to use with region_x"
  default     = ["us-central1-b", "us-central1-c", "us-central1-f"]
}

variable "region_y" {
  description = "The region used for cluster Y"
  default     = "us-west2"
}

variable "region_y_zones" {
  description = "The zones to use with region_y"
  default     = ["us-west2-a", "us-west2-b", "us-west2-c"]
}
