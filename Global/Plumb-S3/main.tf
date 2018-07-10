terraform {
  backend "s3" {
    bucket = "jbd-test-terraform-state"
    key    = "service/stage/s3bucket/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "plumb_s3" {
    bucket = "${var.bucket_name}"

    versioning {
        enabled = true
    }

}