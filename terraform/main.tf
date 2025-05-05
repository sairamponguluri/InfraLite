provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (Update if needed)
  instance_type = "t2.micro"

  tags = {
    Name = "InfraLite-App-Server"
  }
}
