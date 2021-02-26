terraform {
  backend "s3" {
    bucket     = "webops-sandbox-tfstate"
    region     = "eu-west-2"
    key        = "jonny.tfstate"
    encrypt    = "true"
    lock_table = "webops-sandbox-tflock"
    acl        = "bucket-owner-full-control"
  }
}
