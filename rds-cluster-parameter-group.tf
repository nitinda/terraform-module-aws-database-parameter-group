resource "aws_rds_cluster_parameter_group" "rds_cluster_parameter_group" {
  name_prefix = var.name_prefix
  family      = var.family
  description = var.description
  tags        = var.tags
  dynamic "parameter" {
    for_each = var.parameter
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }
}