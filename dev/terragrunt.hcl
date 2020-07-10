remote_state {

  backend = "s3"
  config = {
    bucket         = "terragrunt-state-dev"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
