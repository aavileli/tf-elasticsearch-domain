{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {
                  "aws:SourceIp": [
                    ${IpAddresses}
                  ]
                }
            }
        }
    ]
}