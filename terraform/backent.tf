terraform {
  backend "s3" {
    bucket = "loloashstate"
    key    = "state/file.tfstate"
    region = "eu-north-1"
    dynamodb_table = "locktable" 
    encrypt = true
  }
}
