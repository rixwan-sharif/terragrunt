remote_state {
  backend = "s3"
  config = {
    bucket         = "terragrunt-remote-state-inovalon"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}