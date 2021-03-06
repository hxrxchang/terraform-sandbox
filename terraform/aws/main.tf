provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_version = ">= 0.13.0"
  backend "s3" {
    bucket  = "hxrxchang-terraform-state"
    region  = "ap-northeast-1"
    key     = "terraform-sandbox.tfstate"
    encrypt = true
  }
}

