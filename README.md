# terraform_ec_subnet

Create a subnet used for by Elastic cache instance

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
module "ec_subnet_default" {
  source = "github.com/virsas/terraform_ec_subnet"
  name = "ecSubnet"
  subnets = [ module.vpc_subnet_ec_a.id, module.vpc_subnet_ec_b.id ]
}
```

## Ouput

- name