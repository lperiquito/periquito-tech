terraform {
  required_version = ">= 1.1.2"
  backend "s3" {
    bucket                 = "periquito-tfstate"
    key                    = "periquito-tech.tfstate"
    region                 = "eu-west-2"
    skip_region_validation = "true"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.70.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias = "acm_provider"
  region = "us-east-1"
}
