output "instance_url" {
  description = "The URL to access NGINX server."
  value = "http://${aws_instance.nginx-server.public_ip}"
}

output "instance_public_ip" {
  description = "The Public IP to access NGINX server."
  value = aws_instance.nginx-server.public_ip
}
