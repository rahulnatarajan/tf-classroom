variable "region" {
  default = "ap-southeast-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0e4a0de4"
}

variable "subnet_id" {
  default = "subnet-be32b4f7"
}

variable "key_name" {
  default = "awsfs_sg_kp"
}

variable "name_value" {
  default = "terraform-scb-test-23July"
}
