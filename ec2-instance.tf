resource "aws_instance" "csye6225_ec2_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.public_subnets[0].id
  security_groups = [aws_security_group.csye6225_security_group.id]
  key_name        = var.key_name

  root_block_device {
    volume_size           = 25
    volume_type           = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "${var.vpc_name}-ec2-instance"
  }
}
