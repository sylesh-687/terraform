output "network_name" {
  description = "The name of the created network"
  value       = incus_network.this.name
}