remote_state {

  backend = "s3"
  config = {
    bucket         = "terragrunt-state-qa"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
