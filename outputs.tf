output "endpoint" {
  description = "The connection endpoint (hostname:port)"
  value       = module.db_instance.endpoint
}

output "address" {
  description = "The hostname of the RDS instance"
  value       = module.db_instance.address
}

output "port" {
  description = "The port of the RDS instance"
  value       = module.db_instance.port
}

output "id" {
  description = "The ID of the RDS instance"
  value       = module.db_instance.id
}

