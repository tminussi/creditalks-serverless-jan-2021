terraform {
  backend "s3" {
    bucket = "creditalks-state-bucket"
    key    = "prod.tfstate"
    region = "us-east-1"
  }
}