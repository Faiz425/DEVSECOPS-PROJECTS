provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform7665" {
    bucket = "terraform7665"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform7665"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}
