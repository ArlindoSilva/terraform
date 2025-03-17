variable "do_token" {}

variable "droplet_name" {}

variable "droplet_region" {
  default = "nyc1"
}

variable "droplet_size" {
  default = "s-1vcpu-1gb"
}

variable "ssh_key_name" {
  default = "aula-terraform"
}

variable "firewall_aula_name" {
  default = "firewall-aula"
}