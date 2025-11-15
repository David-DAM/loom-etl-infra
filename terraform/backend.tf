terraform {
  backend "s3" {
    bucket = "etl-weather-terraform-state"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}