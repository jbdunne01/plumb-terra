provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "plumb_terraform_state" {
    bucket = "expo-plumb-terraform-state"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}

