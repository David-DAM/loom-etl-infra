resource "aws_dynamodb_table" "etl-weather-metadata" {
  name         = "job_metadata_entity"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
 
  # attribute {
  #   name = "id"
  #   type = "S"
  # }

  # ttl {
  #   attribute_name = "TimeToExist"
  #   enabled        = true
  # }

  tags = {
    Name        = "ETL Weather"
    Environment = "Test"
  }
}