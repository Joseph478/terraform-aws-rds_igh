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

