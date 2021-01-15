terraform {
  backend "s3" {
    bucket = "creditalks-state-bucket"
    key    = "dev.tfstate"
    region = "us-east-1"
  }
}