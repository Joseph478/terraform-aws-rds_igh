resource "aws_db_instance" "this" {
    identifier = "db-${var.name_main}"

    engine            = var.engine
    # engine_version    = "${var.engine_version}"
    # db.t3.micro
    instance_class    = var.instance_class
    allocated_storage = var.allocated_storage
    max_allocated_storage  = var.max_allocated_storage
    # gp2, gp3, iops
    storage_type      = var.storage_type
    storage_encrypted           = true

    db_name  = var.db_name
    username = var.username
    password = var.password
    # port     = "${var.port}"

    vpc_security_group_ids = var.vpc_security_group_ids
    db_subnet_group_name   = var.db_subnet_group_name

    multi_az            = var.multi_az
    # iops                = "${var.iops}"
    publicly_accessible = var.publicly_accessible

    # monitoring
    # performance_insights_enabled = var.performance_insight



    allow_major_version_upgrade = var.allow_major_version_upgrade
    auto_minor_version_upgrade  = var.auto_minor_version_upgrade
    apply_immediately           = var.apply_immediately

    
    copy_tags_to_snapshot       = var.copy_tags_to_snapshot
    backup_retention_period     = var.backup_retention_period

    # deletion backups when db is deleted
    delete_automated_backups    = var.delete_automated_backups
    deletion_protection         = false
    #encrypt storage
    final_snapshot_identifier   = "db-${var.name_main}-snapshot-delete"
    skip_final_snapshot         = var.skip_final_snapshot
    # tags = "${merge(var.tags, map("Name", format("%s", var.name_main)))}"
}