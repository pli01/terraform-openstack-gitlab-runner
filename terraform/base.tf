module "base" {
  source = "./modules/base"
  # network, fip
  prefix_name      = var.prefix_name
  external_network = var.external_network
  network_worker   = var.network_worker
  dns_nameservers  = var.dns_nameservers
  # security group
  ssh_access_cidr = var.ssh_access_cidr
  # root volume
  vol_type          = var.vol_type
  vol_size          = var.vol_size
  image             = var.image
  most_recent_image = var.most_recent_image
}
