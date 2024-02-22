terraform {
  backend "s3" {
    bucket = "udacity-sre-course1-terraform-andqk"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}
