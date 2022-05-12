resource "aws_db_subnet_group" "main" {
  name       = "${var.environment_name}-db_subnet-group"
  subnet_ids = matinc-mp-hml

  tags = {
    Environment = var.environment_name
  }
}