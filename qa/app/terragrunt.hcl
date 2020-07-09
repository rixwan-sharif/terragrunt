locals {
 
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  env = local.environment_vars.locals.environment
}


terraform {
  source = "git::git@github.com:rixwan-sharif/tf-modules.git//app?ref=v0.0.2"
}
include {
  path = find_in_parent_folders()
}


dependency "iam_role" {
  config_path = "../security"
}


inputs = {
  iam_role	 = dependency.iam_role.outputs.ec2_instance_profile
  instance_count = 1
  instance_type  = "t2.micro"
  env = "${local.env}"
}
