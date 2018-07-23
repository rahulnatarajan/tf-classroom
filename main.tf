provider "aws" {
  region     = "${var.region}"
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
