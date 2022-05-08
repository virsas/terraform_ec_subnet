# terraform_es_subnet

Create a subnet used for by elasticcache instance

##  Dependencies

- VPC subnets - <https://github.com/virsas/terraform_vpc_subnet>

## Files

- None

## Terraform example

``` terraform
##############
# Variable
##############
# Not needed

##############
# Module
##############
module "alb_main_waf" {
  source = "github.com/virsas/terraform_es_subnet"
  name = "esSubnet"
  subnets = [ module.vpc_subnet_es_a.id, module.vpc_subnet_es_b.id ]
}
```