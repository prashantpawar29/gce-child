output "infra_mgmt_host" {
  description = "Name of Instance"
  value       = module.infra_mgmt_host.*.name
}
