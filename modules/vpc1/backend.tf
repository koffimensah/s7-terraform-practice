terraform {
  backend "s3" {
    bucket  = "s7k-bucket"         # Replace with your S3 bucket name
    key     = "vpc1/state.tfstate" # Path to the state file in the bucket
    region  = "us-east-1"          # Region where the S3 bucket is located
    encrypt = true                 # Enable encryption for state file
    # dynamodb_table = "s7k-Ddb"         # Optional: DynamoDB table for state locking
  }
}
