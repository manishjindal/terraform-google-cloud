variable "prefix" {
    type = string
}

variable "host_project_id" {
  type = string
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
