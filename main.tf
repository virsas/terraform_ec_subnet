provider "aws" {
  region = var.region
}

resource "aws_elasticache_subnet_group" "subnet" {
  name       = var.name
  subnet_ids = var.subnets
}