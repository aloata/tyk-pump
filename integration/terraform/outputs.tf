# Generated by: wf-gen from tyk-ci
# Generated at: Tue 11 Aug 15:50:38 IST 2020

data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk-pump" {
  value = data.terraform_remote_state.integration.outputs.tyk-pump
  description = "ECR creds for tyk-pump repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
