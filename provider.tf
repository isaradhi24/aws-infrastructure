provider "aws" {
  region = "us-east-2"
  # shared_credentials_files = ["C:/Users/isara/.aws/credentials"]
  shared_credentials_files = ["${pathexpand("~/.aws/credentials")}"]

}