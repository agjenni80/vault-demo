//--------------------------------------------------------------------
// Providers

provider "aws" {
  // Credentials set via env vars

  region = "${var.aws_region}"
}

//--------------------------------------------------------------------
// Data Sources

resource "aws_instance" "web" { 
    ami     = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    availability_zone = "${var.aws_region}a"
    associate_public_ip_address   = "true"
    root_block_device {
    volume_size = "${var.volume_size}"
  }
}
/*data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["345084742485"] # Canonical
}*/
