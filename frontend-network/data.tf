# Read state from the HCP Terraform remote workspace instead of a local file path
data "terraform_remote_state" "backend_network" {
  backend = "remote"

  # config = {
  #   path = "${path.module}/../backend-network/terraform.tfstate"
  # }
  config = {
    organization = "nyein-hello-cloud"
    workspaces = {
      name = "backend-network-ws"
    }
  }
}