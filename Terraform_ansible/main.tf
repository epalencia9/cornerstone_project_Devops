resource "aws_instance" "managed-ansible_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name        = "devops"
  security_groups = ["default"]
  user_data = file("ansiblee.sh")

  tags = {
    Name = "managed-ansibleserver-terraform"
  }
}
resource "aws_instance" "controlnode-ansible_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name        = "devops"
  security_groups = ["default"]
  user_data = file("ansiblee.sh")

  tags = {
    Name = "controlnode-ansibleserver-terraform"
  }
}
  resource "aws_security_group" "default" {
    tags = {
    type = "terraform-security-group"
}
}
