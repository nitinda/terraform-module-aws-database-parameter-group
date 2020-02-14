## RDS Subnet Group
variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix."
}

variable "description" {
  description = "The description of the DB subnet group."
}

variable "family" {
  description = "The family of the DB cluster parameter group."
}

variable "parameter" {
  description = "A list of DB parameters to apply."
  type        = "list"
}

## Tags
variable common_tags {
  description = "Resources Tags"
  type        = "map"
}
