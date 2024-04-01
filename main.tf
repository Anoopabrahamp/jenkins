provider "aws" {
  region = "us-east-1"
  shared_credentials_files = [ "D:/cred.txt" ]
  profile = "training"
}
