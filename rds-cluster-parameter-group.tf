resource "aws_rds_cluster_parameter_group" "rds_cluster_parameter_group" {
  name_prefix = "${var.name_prefix}"
  family      = "${var.family}"
  description = "${var.description}"
  tags        = "${var.common_tags}"
  parameter   = "${var.parameter}"
}