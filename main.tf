provider "aws" {
region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
bucket = "my-githubactions-bucket-1199"
}


resource "aws_instance" "my_server" {
  ami           = "ami-006f82a1d5a27da54" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
