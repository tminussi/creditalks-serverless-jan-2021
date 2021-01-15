resource "aws_iam_policy_attachment" "users_policy_attachment" {
  name       = "${var.environment}-${var.project}-users-attachment"
  roles      = [aws_iam_role.users_iam_role.name]
  policy_arn = aws_iam_policy.user_policy.arn
}