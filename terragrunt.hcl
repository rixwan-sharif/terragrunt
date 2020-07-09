locals {

  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  environment_name = local.environment_vars.locals.environment
}

remote_state {

  backend = "s3"
  config = {
    bucket         = "terragrunt-state-${local.environment_name}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}


inputs = merge(
  local.environment_vars.locals
)
