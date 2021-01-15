resource "aws_dynamodb_table" "users" {
  name     = "${var.environment}-${var.project}-users"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
  write_capacity   = var.write_capacity
  read_capacity    = var.read_capacity
}

resource "aws_ssm_parameter" "dynamodb_users_table" {
  name  = "${var.environment}-${var.project}-dynamodb-users-table"
  type  = "String"
  value = aws_dynamodb_table.users.name
}
