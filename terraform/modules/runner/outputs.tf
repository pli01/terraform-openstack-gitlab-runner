### outputs
output "stack_output" {
  value = openstack_orchestration_stack_v1.runner[*].outputs
  depends_on = [
    openstack_orchestration_stack_v1.runner
  ]
}

output "id" {
  value = openstack_orchestration_stack_v1.runner[*].outputs[0]["output_value"]
  depends_on = [
    openstack_orchestration_stack_v1.runner
  ]
}

output "private_ip" {
  value = openstack_orchestration_stack_v1.runner[*].outputs[1]["output_value"]
  depends_on = [
    openstack_orchestration_stack_v1.runner
  ]
}


