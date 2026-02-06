terraform {
  backend "s3" {
    bucket = "s3test128"
    key    = "state/file.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock_table" 
    encrypt = true
  }
}
