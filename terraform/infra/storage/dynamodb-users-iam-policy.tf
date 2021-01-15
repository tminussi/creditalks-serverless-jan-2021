resource "aws_iam_policy" "user_policy" {
  name = "${var.environment}-${var.project}-user-policy"

  policy = templatefile("${path.module}/templates/dynamodb-policy.tpl", {
    resource = aws_dynamodb_table.users.arn
  })
}