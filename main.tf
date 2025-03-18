provider "aws" {
  alias  = "ap_south"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "us_east"
  region = "us-east-1"
}

resource "aws_instance" "instance_ap_south" {
  provider      = aws.ap_south
  ami          = "ami-014e2b14bdb83e8ca" 
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-AP-SOUTH"
  }
}

resource "aws_instance" "instance_us_east" {
  provider      = aws.us_east
  ami          = "ami-01f5a0b78d6089704" 
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-US-East"
  }
}
