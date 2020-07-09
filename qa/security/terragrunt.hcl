locals {
 
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  env = local.environment_vars.locals.environment
}

terraform {
  source = "git::git@github.com:rixwan-sharif/tf-modules.git//security?ref=v0.0.1"
}
include {
  path = find_in_parent_folders()
}
inputs = {
  ec2_role_name  = "EC2-Adminstrative-Role"
  env = "${local.env}"
}
