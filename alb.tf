resource "aws_lb" "backend" {
  name               = "${local.common_tag}-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = module.vpc.public_subnets

  tags = {
    Team = local.Team
    Environment = local.Environment
  }
  depens_on = [
    module.vpc
  ]
}