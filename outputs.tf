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

output "arn" {
  description = "The ARN of the RDS instance"
  value       = module.db_instance.arn
}

output "resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = module.db_instance.resource_id
}

output "db_name" {
  description = "The name of the database"
  value       = module.db_instance.db_name
}

output "status" {
  description = "The RDS instance status"
  value       = module.db_instance.status
}

output "security_group_id" {
  description = "The ID of the security group attached to the RDS instance"
  value       = aws_security_group.security_group.id
}

output "db_subnet_group_id" {
  description = "The db subnet group name"
  value       = module.db_subnet_group.db_subnet_group_id
}

output "db_subnet_group_arn" {
  description = "The ARN of the db subnet group"
  value       = module.db_subnet_group.db_subnet_group_arn
}

