//--------------------------------------------------------------------
// Providers

provider "aws" {
  // Credentials set via env vars

  region = "${var.aws_region}"
}

//--------------------------------------------------------------------
// Data Sources

data "aws_ami_ids" "ubuntu" {
    owners = ["345084742485"]
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
