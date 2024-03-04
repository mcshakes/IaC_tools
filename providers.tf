terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  # shared_credentials_files = ["~/.aws/creds"]  NOTE: Setup with VS Code plugin
  profile = "vscode"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}