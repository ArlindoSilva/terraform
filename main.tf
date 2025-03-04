terraform {
  required_version = "~> 1.0"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  default = "do_token"
}
#Passar o token pelo terminal com o comando: export TF_VAR_do_token="codigodotoken"
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "vm_aula_terraform" {
  image    = "ubuntu-22-04-x64"
  name     = "vm-aula-terraform"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
}

data "digitalocean_ssh_key" "ssh_key" {
  name = "aula-terraform"
}

resource "digitalocean_firewall" "firewall_aula" {
  name = "firewall-aula"

  droplet_ids = [digitalocean_droplet.vm_aula_terraform.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

}