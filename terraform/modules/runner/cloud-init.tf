# runner userdata
data "cloudinit_config" "runner_config" {
  gzip          = false
  base64_encode = false

  # order matter
  # cloud-init.cfg
  part {
    filename     = "cloud-init.cfg"
    content_type = "text/cloud-config"
    content      = file("${path.module}/../../heat/config-scripts/cloud-init.tpl")
  }
  # config.cfg sourced in each script, and contains all needed variables
  part {
    content_type = "text/plain"
    content = templatefile("${path.module}/../../heat/config-scripts/config.cfg.tpl", {
      ssh_authorized_keys           = jsonencode(var.ssh_authorized_keys)
      no_proxy                      = var.no_proxy
      tinyproxy_upstream            = var.tinyproxy_upstream
      tinyproxy_proxy_authorization = var.tinyproxy_proxy_authorization
      internal_http_proxy           = var.internal_http_proxy
      dns_nameservers               = jsonencode(var.dns_nameservers)
      dns_domainname                = jsonencode(var.dns_domainname)
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
    })
  }
  part {
    content_type = "text/plain"
    content      = file("${path.module}/../../heat/config-scripts/worker_install_ssh_keys.sh")
  }
  part {
    content_type = "text/plain"
    content      = file("${path.module}/../../heat/config-scripts/worker_install_docker.sh")
  }
  # post conf
  part {
    content_type = "text/plain"
    content      = file("${path.module}/../../heat/config-scripts/worker_runner_postconf.sh")
  }
}
