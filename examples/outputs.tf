output "bastion_id" {
  value = module.gitlab-runner-pool.bastion_id
}
output "bastion_private_ip" {
  value = module.gitlab-runner-pool.bastion_private_ip
}
output "bastion_public_ip" {
  value = module.gitlab-runner-pool.bastion_public_ip
}

output "http_proxy_id" {
  value = module.gitlab-runner-pool.http_proxy_id
}
output "http_proxy_private_ip" {
  value = module.gitlab-runner-pool.http_proxy_private_ip
}
output "http_proxy_public_ip" {
  value = module.gitlab-runner-pool.http_proxy_public_ip
}

output "runner_id" {
  value = module.gitlab-runner-pool.runner_id
}
output "runner_private_ip" {
  value = module.gitlab-runner-pool.runner_private_ip
}
