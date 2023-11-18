resource "aws_autoscaling_group" "backend" {
  availability_zones = var.azs
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.backend.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_attachment" "backend" {
  autoscaling_group_name = aws_autoscaling_group.backend.id
  elb                    = aws_lb.backend.id
}