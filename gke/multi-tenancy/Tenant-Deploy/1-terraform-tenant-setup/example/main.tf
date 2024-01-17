provider "google" {
}

provider "google-beta" {
}

resource "random_id" "suffix" {
  byte_length = 2
}

locals {
  creds_path           = "terraform-hmt-2901.json"

  host_project_id      = format("%s-host-%s", var.prefix, random_id.suffix.hex)
  service_x_project_id = format("%s-service-x-%s", var.prefix, random_id.suffix.hex)
  service_y_project_id = format("%s-service-y-%s", var.prefix, random_id.suffix.hex)

  shared_vpc_name      = format("%s-network", var.prefix)


  subnet_x = {
    name   = format("%s-subnet-x", var.prefix)
    ip     = "10.67.0.0/16"
    region = var.region_x
    pod    = "10.48.0.0/16"
    svc    = "10.49.0.0/16"
  }
  subnet_y = {
    name   = format("%s-subnet-y", var.prefix)
    ip     = "10.77.0.0/16"
    region = var.region_y
    pod    = "10.58.0.0/16"
    svc    = "10.59.0.0/16"
  }
  subnets      = [ local.subnet_x, local.subnet_y ]
}


module "shared_vpc" {
  source = "../modules/vpc"

  prefix          = var.prefix
  network_name    = local.shared_vpc_name
  subnets         = local.subnets
  host_project_id = var.host_project_id
}

