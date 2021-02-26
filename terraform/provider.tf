provider "aws" {
  version = ">= 2.23, <=2.23"
  alias   = "sandbox"
  region  = "eu-west-2"
}

terraform {
  required_version = "0.12.30"
}

provider "template" {
  version = "2.1.0"
}
