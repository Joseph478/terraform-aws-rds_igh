resource "aws_db_subnet_group" "this" {
    name = "subnet_group_${var.name_main}"
    description = "Database subnet group for ${var.name_main}"
    subnet_ids  = var.subnet_ids

    # tags = "${merge(var.tags, map("Name", format("%s", var.name_main)))}"
}