resource "aws_dynamodb_table" "app-dynamodb-table" {
  name           = "${var.environment}-${var.dynamo_table_name}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }

  tags = {
    Name        = "${var.environment}-${var.dynamo_table_name}"
    Environment = "production"
  }
}