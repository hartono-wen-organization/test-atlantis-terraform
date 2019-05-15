provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "b" {
    bucket = "hartono-test-atlantis-temp"
    acl    = "private"

    tags = {
        Name        = "hartono-test-atlantis-temp"
        Environment = "Test"
        JIRA        = "IK-369 Secure Atlantis server"
    }

    versioning {
        enabled = false
    }
}
