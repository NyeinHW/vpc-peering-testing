terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # Connect to your HCP Terraform Organization and specific workspace
  cloud {
    organization = "nyein-hello-cloud"

    workspaces {
      name = "backend-network-ws" # Match this to the exact workspace name for each folder!
    }
  }
}

