resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair
  subnet_id     = var.subnet_id

  tags = {
    Name = var.instance_name
  }

  vpc_security_group_ids = var.security_group_ids

  root_block_device {
    volume_size = var.root_volume_size
  }
}

