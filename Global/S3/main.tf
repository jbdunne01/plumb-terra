provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "plumb_terraform_state" {
    bucket = "${var.bucket_name}"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}

