resource "aws_subnet" "my_public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.my_public_subnet_cidr_block

  tags = {
    Name = join("_",var.project, "PUB_SUBNET")
    Project = var.project
  }
}

