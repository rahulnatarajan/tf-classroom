provider "aws" {
  region     = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "scbdemo"
    key = "scbclass.tfstate"
    encrypt = "true"
    region = "ap-southeast-1"
  }
}


resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  tags {
    Name = "${var.name_value}"
  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

