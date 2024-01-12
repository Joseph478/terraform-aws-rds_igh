variable "name_main" {
    description = "Name Main"
    type = string
}


variable "subnet_ids" {
    description = "A list of VPC subnet IDs"
    type        = list(string)
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    default     = {}
}