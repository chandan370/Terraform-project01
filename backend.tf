terraform {
  backend "s3" {
    bucket = "chandan-demo-bucky"
    key    = "statefile/terraform.tfstate"
    region = "us-east-2"
  }
}
