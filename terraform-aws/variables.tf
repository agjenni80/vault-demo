# AWS region in which to deploy
variable aws_region {}

# All resources will be tagged with this
variable environment_name {}

variable consul_dc {
default="dc1"
}

variable vault_server_count {
  default = 3
}

# URL for Vault Ent binary
variable vault_zip_file {
    default = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.5/vault-enterprise_0.11.5%2Bent_linux_amd64.zip"
}

# URL for Consul Ent binary
variable consul_zip_file {
    default = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/consul/ent/1.3.0/consul-enterprise_1.3.0%2Bent_linux_amd64.zip"
}

# Instance size
variable instance_type {}

# SSH key name to access EC2 instances (should already exist)
variable key_name {}

# Instance tags for HashiBot AWS resource reaper
variable hashibot_reaper_owner {}
variable hashibot_reaper_ttl {
    default = 168
}
