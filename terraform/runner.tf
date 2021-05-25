module "runner" {
  source      = "./modules/runner"
  maxcount    = var.runner_count
  prefix_name = var.prefix_name
  # fip                 = module.base.runner_id
  network                = module.base.network_id
  subnet                 = module.base.subnet_id
  source_volid           = module.base.root_volume_id
  security_group         = module.base.runner_secgroup_id
  vol_type               = var.vol_type
  flavor                 = var.runner_flavor
  image                  = var.image
  key_name               = var.key_name
  no_proxy               = var.no_proxy
  ssh_authorized_keys    = var.ssh_authorized_keys
  internal_http_proxy    = join(" ", formatlist("%s%s:%s", "http://", flatten(module.http_proxy[*].private_ip), "8888"))
  dns_nameservers        = var.dns_nameservers
  dns_domainname         = var.dns_domainname
  nexus_server           = var.nexus_server
  mirror_docker          = var.mirror_docker
  mirror_docker_key      = var.mirror_docker_key
  docker_version         = var.docker_version
  docker_compose_version = var.docker_compose_version
  gitlab_runner_version  = var.gitlab_runner_version
  gitlab_url             = var.gitlab_url
  gitlab_auth_token      = var.gitlab_auth_token
  gitlab_runner_tag      = var.gitlab_runner_tag
  docker_auth_config     = var.docker_auth_config
  depends_on = [
    module.base,
    module.bastion,
    module.http_proxy
  ]
}
