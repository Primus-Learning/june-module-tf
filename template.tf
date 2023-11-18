resource "aws_launch_template" "backend" {
  name = "${local.common_tag}-ltp"
  image_id = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.backend.key_name
  vpc_security_group_ids = []
  user_data = filebase64("${path.module}/backend.sh")
}