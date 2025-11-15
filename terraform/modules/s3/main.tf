# Necessary to have this bucket previously created to manage tfstate
# resource "aws_s3_bucket" "tf_state" {
#   bucket = "etl-weather-terraform-state"
# }

resource "aws_s3_bucket" "etl-weather-bucket" {
  bucket        = "etl-weather"
  force_destroy = true

  tags = {
    Name        = "ETL Weather"
    Environment = "Test"
  }
}