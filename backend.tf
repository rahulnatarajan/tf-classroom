terraform {
  backend "s3" {
    bucket = "scbdemo"
    key = "scbclass.tfstate"
    encrypt = "true"
    region = "ap-southeast-1"
  }
}
