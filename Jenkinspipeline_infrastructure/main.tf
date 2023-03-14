resource "aws_instance" "docker_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name = "devops"
  security_groups = ["terraform"]
  user_data = file("docker.sh")

  tags = {
    Name = "docker_server-terraform"
  }
}

resource "aws_instance" "tomcatt_server" {
  ami             = "ami-0cff7528ff583bf9a"
  instance_type   = "t2.micro"
  key_name = "devops"
  security_groups = ["terraform"]
  user_data = file("tomcatt.sh")

  tags = {
    Name = "tomcatt_server-terraform"
  }
}
