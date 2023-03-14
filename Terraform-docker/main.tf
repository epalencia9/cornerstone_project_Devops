resource "aws_instance" "california_server" {
  ami           = "ami-060d3509162bcc386"
  instance_type = "t2.micro"
  key_name = "devops"
  user_data = file("docker.sh")
  security_groups = ["default"]
  

  tags = {
  Name = "DockerTerraform"
  }
  }
  
resource "aws_security_group" "default" {
	tags = {
	type = "terraform-security-group"
}
}
