terraform {
  source = "git::git@github.com:rixwan-sharif/tf-modules.git//security?ref=v0.0.2"
}
include {
  path = find_in_parent_folders()
}
inputs = {
  ec2_role_name  = "EC2-Adminstrative-Role"
  env = "qa"
}
