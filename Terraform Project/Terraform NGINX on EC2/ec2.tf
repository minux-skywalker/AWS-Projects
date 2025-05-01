resource "aws_instance" "nginx-server" {
  ami                         = "ami-0e35ddab05955cf57"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id]


  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "NGINX-server"
  }
}
