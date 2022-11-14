resource "aws_instance" "app_server" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = var.instance_type
	vpc_security_group_ids = [aws_security_group.allow_port80.id]
  
  tags = {
    Name = var.application_name
  }
   user_data = file("./script.sh")

}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}