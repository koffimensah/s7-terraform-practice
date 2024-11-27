# terraform {
#   backend "s3" {
#     bucket         = "s7ko-bucket"              # Replace with your S3 bucket name
#     key            = "s3-backend/state.tfstate" # Path to the state file in the bucket
#     region         = "us-east-1"                # Region where the S3 bucket is located
#     encrypt        = true                       # Enable encryption for state file
#     # dynamodb_table = "s7ko-Ddb"                 # Optional: DynamoDB table for state locking
#   }
# }
