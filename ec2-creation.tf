terraform {
  required_providers {
    aws = {
      source="hashicorp/aws"
      version= "~>6.0"
    }
  }  
  required_version = ">=1.14"
}

provider "aws" {
  region= "us-east-1"
}

resource "aws_instance" "myserver" {
  ami="ami-0ecb62995f68bb549"
  count=3
  instance_type="t3.micro"

  tags={
    Name="Server-${count.index+1}"
  }
}


