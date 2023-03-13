resource "aws_instance" "jenkins_server" {
  ami             = "ami-060d3509162bcc386"
  instance_type   = "t2.micro"
  key_name        = "devops"
  security_groups = ["default"]
  user_data = file("jenkins.sh")

  tags = {
    Name = "Jenkins_server-terraform"
  }
}
  resource "aws_security_group" "default" {
	tags = {
	type = "jenkins-security-group"
}
}
