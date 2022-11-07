resource "aws_instance" "app_server" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = var.instance_type

  tags = {
    Name = var.application_name
  }

   user_data = <<-EOF
   #!/bin/bash
   sudo yum update -y
   sudo yum install httpd -y
   sudo systemctl enable httpd
   sudo systemctl start httpd
   echo "<html><body><div>This is a test webserver!</div></body></html>" > /var/www/html/index.html
   EOF

}


