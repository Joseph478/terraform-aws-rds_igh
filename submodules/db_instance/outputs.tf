output "endpoint" {
  description = "The connection endpoint (hostname:port)"
  value       = aws_db_instance.this.endpoint
}

output "address" {
  description = "The hostname of the RDS instance"
  value       = aws_db_instance.this.address
}

output "port" {
  description = "The port of the RDS instance"
  value       = aws_db_instance.this.port
}

output "id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.this.id
}

output "arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.this.arn
}

output "resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = aws_db_instance.this.resource_id
}

output "db_name" {
  description = "The name of the database"
  value       = aws_db_instance.this.db_name
}

output "status" {
  description = "The RDS instance status"
  value       = aws_db_instance.this.status
}

