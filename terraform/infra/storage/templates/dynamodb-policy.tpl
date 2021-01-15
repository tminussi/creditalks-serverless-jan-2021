{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:Query",
        "dynamodb:PutItem",
        "dynamodb:Scan",
        "dynamodb:GetItem"
      ],
      "Effect": "Allow",
      "Resource": "${resource}"
    },
    {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": "*"
        }
  ]
} 