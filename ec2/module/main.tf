resource "aws_instance" "my_instance" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  count                  = var.instances_count
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.PATH_TO_PUBLIC_KEY
  tags = {
    Name = join("_", var.project, "VPC")

    Project = var.project_name

  }
}
