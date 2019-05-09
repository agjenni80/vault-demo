//--------------------------------------------------------------------
// Providers

provider "aws" {
  // Credentials set via env vars

  region = "${var.aws_region}"
}

//--------------------------------------------------------------------
resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  associate_public_ip_address = "true"
 
}


