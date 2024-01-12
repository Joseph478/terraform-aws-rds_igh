variable "name_main" {
    description = "Name Main"
    type = string
}

variable "engine" {
    description = "The database engine to use"
    type = string
}

variable "instance_class" {
    description = "The instance type of the RDS instance"
    type = string
}
variable "allocated_storage" {
    description = "allocated storage of the RDS instance"
    type = number
}

variable "max_allocated_storage" {
    description = "MAX allocated storage of the RDS instance"
    type = number
}

variable "storage_type" {
    description = "Storage type of the RDS instance"
    type = string
}

variable "username" {
    description = "Username for the master DB user"
    type = string
}   

variable "password" {
    description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
    type = string
}
variable "vpc_security_group_ids" {
    description = "List of VPC security groups to associate"
    type = list(string)
    default     = []
}

variable "db_subnet_group_name" {
    description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC"
    type = string
    default     = ""
}

variable "multi_az" {
    description = "Specifies if the RDS instance is multi-AZ"
    default     = false
}
variable "publicly_accessible" {
    description = "Bool to control if instance is publicly accessible"
    default     = false
}

variable "allow_major_version_upgrade" {
    description = "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible"
    default     = false
}

variable "auto_minor_version_upgrade" {
    description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
    default     = true
}

variable "apply_immediately" {
    description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
    default     = false
}

variable "copy_tags_to_snapshot" {
    description = "On delete, copy all Instance tags to the final snapshot (if final_snapshot_identifier is specified)"
    default     = false
}

variable "backup_retention_period" {
    description = "The days to retain backups for"
    type = number
    default     = 1
}

variable "delete_automated_backups" {
    description = "Delete backupts with the instance"
    default = false
}

variable "tags" {
    description = "A mapping of tags to assign to all resources"
    default     = {}
}