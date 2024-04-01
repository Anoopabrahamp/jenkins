##Account ID : 767397928391 - Cloudwatch - second account
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = [ "D:/cred.txt" ]
  profile = "second"
}