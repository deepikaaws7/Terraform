# Output details are maintaining DNS name
output "elb-dns-name" {
  value = "${aws_elb.web_elb.dns_name}"
}
