output "ip" {
  value = "${aws_eip.ip.public_ip}"
}

output "id" {
  value = "${aws_instance.example.id}"
}
