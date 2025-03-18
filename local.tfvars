# local-stack has manual tf endpoints
access_key                   = "test_access_key"
secret_key                   = "test_secret_key"

s3_use_path_style            = true
skip_credentials_validation  = true
skip_metadata_api_check      = true

endpoints = {
  apigateway     = "http://localhost:4566"
  cloudformation = "http://localhost:4566"
  cloudwatch     = "http://localhost:4566"
  dynamodb       = "http://localhost:4566"
  es             = "http://localhost:4566"
  firehose       = "http://localhost:4566"
  iam            = "http://localhost:4566"
  kinesis        = "http://localhost:4566"
  lambda         = "http://localhost:4566"
  route53        = "http://localhost:4566"
  redshift       = "http://localhost:4566"
  s3             = "http://localhost:4566"
  secretsmanager = "http://localhost:4566"
  ses            = "http://localhost:4566"
  sns            = "http://localhost:4566"
  sqs            = "http://localhost:4566"
  ssm            = "http://localhost:4566"
  stepfunctions  = "http://localhost:4566"
  sts            = "http://localhost:4566"
}