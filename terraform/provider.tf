# PROVIDER
terraform {

  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend s3 {
    bucket = "tf-terraform-hello-world-state-thomas-fernandes"
    key = "terraform.tfstate"
    dynamodb_table = "tf-terraform-hello-world-state-v1"
    region = "us-east-1"
  }

}

provider "aws" {
  region                   = "us-east-1"
 # shared_config_files      = [".aws/config"]
 # shared_credentials_files = [".aws/credentials"]
 # profile                  = "fiap-iac"
}