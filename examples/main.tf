module "gitlab-runner-pool" {
  source                        = "github.com/pli01/terraform-openstack-gitlab-runner//terraform?ref=main"
  prefix_name                   = var.prefix_name
  bastion_count                 = var.bastion_count
  http_proxy_count              = var.http_proxy_count
  runner_count                  = var.runner_count
  image                         = var.image
  most_recent_image             = var.most_recent_image
  external_network              = var.external_network
  dns_nameservers               = var.dns_nameservers
  network_worker                = var.network_worker
  vol_type                      = var.vol_type
  vol_size                      = var.vol_size
  key_name                      = var.key_name
  bastion_flavor                = var.bastion_flavor
  http_proxy_flavor             = var.http_proxy_flavor
  runner_flavor                 = var.runner_flavor
  no_proxy                      = var.no_proxy
  ssh_access_cidr               = var.ssh_access_cidr
  ssh_authorized_keys           = var.ssh_authorized_keys
  tinyproxy_upstream            = var.tinyproxy_upstream
  tinyproxy_proxy_authorization = var.tinyproxy_proxy_authorization
  dns_domainname                = var.dns_domainname
  nexus_server                  = var.nexus_server
  mirror_docker                 = var.mirror_docker
  mirror_docker_key             = var.mirror_docker_key
  docker_version                = var.docker_version
  docker_compose_version        = var.docker_compose_version
  gitlab_runner_version         = var.gitlab_runner_version
  gitlab_url                    = var.gitlab_url
  gitlab_auth_token             = var.gitlab_auth_token
  gitlab_runner_tag             = var.gitlab_runner_tag
  docker_auth_config            = var.docker_auth_config
}
