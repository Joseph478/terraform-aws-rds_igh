# DB subnet group
module "db_subnet_group" {
    source = "./submodules/db_subnet_group"
    name_main = var.name_main
    subnet_ids  = var.private_subnets
    tags = "${var.tags}"
}

resource "aws_security_group" "security_group" {
    name        = "sg_fb_${var.name_main}"
    description = "Allow inbound traffic"
    vpc_id      = var.vpc_id

    # ingress {
    #   description      = "All Trafic"
    #   from_port        = 0
    #   to_port          = 0
    #   protocol         = "-1"
    #   # cidr_blocks      =  ["192.168.0.0/16"]
    #   security_groups = [aws_security_group.security_group_alb.id]
    # }
    
    ingress {
        description      = "Trafic HTTPS from VPC"
        from_port        = var.db_port
        to_port          = var.db_port
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        # ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "security_group_ec2"
    }
}

# DB instance
module "db_instance" {
    source = "./submodules/db_instance"
    name_main = var.name_main
    engine            = var.engine
    # engine_version    = var.engine_version
    instance_class    = var.instance_class
    allocated_storage = var.allocated_storage
    max_allocated_storage = var.max_allocated_storage
    storage_type      = "${var.storage_type}"
    username = "${var.username}"
    password = "${var.password}"
    # port     = "${var.port}"

    vpc_security_group_ids = [aws_security_group.security_group.id]
    db_subnet_group_name   = module.db_subnet_group.db_subnet_group_id
    # parameter_group_name   = "${module.db_parameter_group.this_db_parameter_group_id}"

    multi_az            = var.multi_az
    # iops                = "${var.iops}"
    publicly_accessible = var.publicly_accessible

    allow_major_version_upgrade = var.allow_major_version_upgrade
    auto_minor_version_upgrade  = var.auto_minor_version_upgrade
    apply_immediately           = var.apply_immediately
    copy_tags_to_snapshot       = var.copy_tags_to_snapshot

    backup_retention_period     = var.backup_retention_period
    delete_automated_backups    = var.delete_automated_backups
    skip_final_snapshot         = var.skip_final_snapshot
    tags = "${var.tags}"
}