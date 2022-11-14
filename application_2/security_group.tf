resource "aws_security_group" "allow_port80" {
  name        = var.security_group_name
  description = "Habilitar acesso publico a porta 80"

  ingress {
    description      = "Acesso geral na porta 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}