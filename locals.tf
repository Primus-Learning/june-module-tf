locals {
  Environment = var.environment
  Team = var.team
  common_tag = "${local.Environment}-${local.Team}"
}
