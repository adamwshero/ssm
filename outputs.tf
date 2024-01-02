output "instance_ip" {
  description = "IP of the EC2 instance."
  value = aws_instance.this.public_ip
}