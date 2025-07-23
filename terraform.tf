terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 1.27.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.4.0"
    }
  }

  required_version = "~> 1.10.2"
}

provider "spacelift" {}
provider "aws" {}
