module "vpc_shared_net" {
  source          = "terraform-google-modules/network/google"
  #version         = "~> 2.1.1"
  project_id      = var.host_project_id
  network_name    = var.network_name
  shared_vpc_host = "true"
  subnets = [ for s in var.subnets :
    {
      subnet_name           = s.name
      subnet_ip             = s.ip
      subnet_region         = s.region
      subnet_private_access = "true"
    }
  ]
}
